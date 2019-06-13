package com.example.demo.controller;

import com.example.demo.domain.User;
import com.example.demo.domain.dto.DiagramDto;
import com.example.demo.service.DiagramService;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
public class DiagramsController {

    private final DiagramService diagramService;

    public DiagramsController(DiagramService diagramService) {
        this.diagramService = diagramService;
    }

    @GetMapping("/diagram")
    public String getDiagrams(Model model, @AuthenticationPrincipal User user) {

        model.addAttribute("url", "/diagram");
        return "diagram";
    }

    @PostMapping("/diagram/file")
    public String saveFileForDiagram(
                @AuthenticationPrincipal User user,
                BindingResult bindingResult,
                Model model,
                @RequestParam("file") MultipartFile file
    ) {


        model.addAttribute("url", "/diagram");
        return "diagram";
    }


    @GetMapping("/diagrams")
    @ResponseBody
    public List<DiagramDto> getAllDiagrams() {
        return diagramService.getAllDiagramByProject("");
    }
 }
