package com.example.demo.controller;

import com.example.demo.domain.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DiagramsController {

    @GetMapping("/diagram")
    public String getDiagrams(Model model, @AuthenticationPrincipal User user) {

        model.addAttribute("url", "/diagram");
        return "build";
    }

    @GetMapping("/component")
    public String getComponent(Model model, @AuthenticationPrincipal User user) {

        model.addAttribute("url", "/component");
        return "buildcomponent2";
    }


    @GetMapping("/view")
    public String getView(Model model, @AuthenticationPrincipal User user) {

        model.addAttribute("url", "/view");
        return "view";
    }
 }
