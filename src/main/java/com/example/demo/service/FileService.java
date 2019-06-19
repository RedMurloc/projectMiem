package com.example.demo.service;

import com.example.demo.domain.FileData;
import com.example.demo.domain.dto.FileDto;
import com.example.demo.repos.FileDataRepo;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

@Service
public class FileService {

    @Value("${upload.path}")
    private String uploadPath;
    private final Map<Long, List<String[]>> results = new ConcurrentHashMap<>();

    private final FileDataRepo fileDataRepo;


    public FileService(FileDataRepo fileDataRepo) {
        this.fileDataRepo = fileDataRepo;
    }

    public FileDto saveFile(Integer userid, MultipartFile file) {

        FileData fileData = new FileData();
        fileData.setUserId(userid);

        if (Objects.requireNonNull(file.getOriginalFilename()).matches(".*xlsx?$") ||
            Objects.requireNonNull(file.getContentType()).contains("vnd.ms-excel") ||
            file.getContentType().contains("vnd.openxmlformats-officedocument.spreadsheetml.sheet"))
            if (!file.getOriginalFilename().matches(".*csv?$")) {
                return parseExcel(fileData, file);
            }
        return null;
    }

    private FileDto parseExcel(FileData fileData, MultipartFile multipartFile) {
        try (InputStream is = multipartFile.getInputStream()) {
            Workbook workbook = WorkbookFactory.create(is);
            Sheet sheet = workbook.getSheetAt(0);
            Iterator<Row> iterator = sheet.rowIterator();
            if (iterator.hasNext()) {
                fileData.setColumns(getDataFromRow(iterator.next()));
            }

            List<String[]> result = new ArrayList<>();
            while (iterator.hasNext()) {
                Row row = iterator.next();
                result.add(getDataFromRow(row));
            }

            fileData.setName(multipartFile.getName());
            fileData = fileDataRepo.save(fileData);
            results.put(fileData.getId(), result);

            return new FileDto(fileData.getName(),
                               Arrays.stream(fileData.getColumns())
                                        .collect(Collectors.toList()));
        } catch (Exception e) {
            throw new RuntimeException("Ошибка в парсинге файла");
        }
    }

    private List<String> getColumns(Row row) {
        return Arrays.stream(getDataFromRow(row))
                    .collect(Collectors.toList());
    }

    private String[] getDataFromRow(Row row) {
        int length = 0;

        Short firstCellNum = row.getFirstCellNum();
        Short lastCellNum = row.getLastCellNum();

        length = lastCellNum - firstCellNum;
        String[] strings = new String[length];
        for (short i = firstCellNum; i < lastCellNum; i++) {
            Cell cell = row.getCell(i);
            String value = "";
            if (cell != null) {
                cell.setCellType(Cell.CELL_TYPE_STRING);
                value = cell.getStringCellValue();
            } else {
                value = "";
            }
            strings[i - firstCellNum] = value;
        }

        return strings;
    }

    public List<String> getDataByColumn(Long fileId, Integer columnNumber) {
        return results.get(fileId).stream()
                .map(arr-> arr[columnNumber])
                .collect(Collectors.toList());
    }
}
