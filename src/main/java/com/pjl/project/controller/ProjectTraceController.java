package com.pjl.project.controller;

import com.pjl.project.service.ProjectTraceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectTraceController {
    @Autowired
    private ProjectTraceService service;
    @RequestMapping("/toProjectTrace")
    public String toProjectTrace() {
        return "project/projectTrace";
    }
}
