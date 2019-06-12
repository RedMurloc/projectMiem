package com.example.demo.controller;

import com.example.demo.domain.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller("/diagram")
public class DiagramsController {

    @GetMapping
    public String getDiagrams(Model model, @AuthenticationPrincipal User user) {

        model.addAttribute("url", "/diagram");
        return "diagram";
    }
 }
