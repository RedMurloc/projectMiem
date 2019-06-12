package com.example.demo.service;

import com.example.demo.domain.Diagram;
import com.example.demo.domain.dto.DiagramDto;
import com.example.demo.repos.DiagramRepo;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DiagramService {

    private final DiagramRepo diagramRepo;

    public DiagramService(DiagramRepo diagramRepo) {
        this.diagramRepo = diagramRepo;
    }

    public List<DiagramDto> getAllDiagramByProject(String projectName) {

        for (int i = 0; i < 10; i++) {

            Diagram diagram = new Diagram();
            diagram.setName("Name diagram" + i);
            diagramRepo.save(diagram);
        }

        return convertToDto(diagramRepo.findAll());
    }

    private List<DiagramDto> convertToDto(List<Diagram> diagrams) {
        return diagrams.stream()
                        .map(diagram -> new DiagramDto(diagram.getId(), diagram.getName()))
                        .collect(Collectors.toList());
    }
}
