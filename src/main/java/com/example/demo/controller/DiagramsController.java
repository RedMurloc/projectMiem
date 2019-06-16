package com.example.demo.controller;

import com.example.demo.domain.Diagram;
import com.example.demo.domain.User;
import com.example.demo.domain.dto.DiagramDto;
import com.example.demo.domain.dto.FileDto;
import com.example.demo.service.DiagramService;
import com.example.demo.service.FileService;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
public class DiagramsController {

    private final DiagramService diagramService;
    private final FileService fileService;

    public DiagramsController(DiagramService diagramService, FileService fileService) {
        this.diagramService = diagramService;
        this.fileService = fileService;
    }

    @GetMapping("/diagram")
    public String getDiagrams(Model model, @AuthenticationPrincipal User user) {

        model.addAttribute("hasFile", false);
        model.addAttribute("url", "/diagram");
        return "diagram";
    }

    @PostMapping("/diagram/file")
    public String saveFileForDiagram(
                @AuthenticationPrincipal User user,
                Model model,
                @RequestParam("file") MultipartFile file
    ) {

        FileDto fileDto = fileService.saveFile(user.getId(), file);
        model.addAttribute("fileDto", fileDto);

        model.addAttribute("url", "/diagram");
        return "diagram";
    }

    @GetMapping("/diagram/{fileId}")
    @ResponseBody
    public DiagramDto getDiagramByColumn(@AuthenticationPrincipal User user,
                                         @RequestParam String diagramType,
                                         @RequestParam Integer column,
                                         @RequestParam Long fileId
                                         ){

        Diagram diagram = new Diagram();
        diagram.setName("New Diagram");
        diagram.setFileId(fileId);
        diagram.setUserId(user.getId());

        List<String> data = fileService.getDataByColumn(fileId, column);
        diagram.setData((String[]) data.toArray());
        DiagramDto diagramDto = diagramService.saveDiagram(diagram);
        diagramDto.setData(data);

        return diagramDto;
    }
 }
