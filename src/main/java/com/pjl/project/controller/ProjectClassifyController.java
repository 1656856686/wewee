package com.pjl.project.controller;

import com.pjl.project.service.ProjectClassifyService;
import com.pjl.project.service.ProjectCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectClassifyController {
    @Autowired
    private ProjectClassifyService service;
    @RequestMapping("/toProjectClassify")
    public String toProjectClassify() {
        return "project/projectClassify";
    }
}
