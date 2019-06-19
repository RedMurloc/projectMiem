package com.example.demo.service;

import com.example.demo.domain.Diagram;
import com.example.demo.domain.dto.DiagramDto;
import com.example.demo.repos.DiagramRepo;
import org.springframework.stereotype.Service;

@Service
public class DiagramService {

    private final DiagramRepo diagramRepo;

    public DiagramService(DiagramRepo diagramRepo) {
        this.diagramRepo = diagramRepo;
    }

    public DiagramDto saveDiagram(Diagram diagram) {
        diagram = diagramRepo.save(diagram);
        DiagramDto diagramDto = new DiagramDto(diagram.getId(), "type");
        return diagramDto;
    }

}
