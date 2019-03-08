package com.pjl.project.controller;

import com.pjl.project.service.ProjectCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectCommentController {
    @Autowired
    private ProjectCommentService service;
    @RequestMapping("/toProjectComment")
    public String toProjectComment() {
        return "project/projectComment";
    }
}
