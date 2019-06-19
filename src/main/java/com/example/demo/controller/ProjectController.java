package com.example.demo.controller;

import com.example.demo.domain.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectController {

    @GetMapping("/project")
    public String getView(Model model, @AuthenticationPrincipal User user) {

        model.addAttribute("url", "/project");
        return "project";
    }
}
