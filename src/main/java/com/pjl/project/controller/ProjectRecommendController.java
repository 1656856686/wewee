package com.pjl.project.controller;

import com.pjl.project.service.ProjectRecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectRecommendController {
    @Autowired
    private ProjectRecommendService service;
    @RequestMapping("/toProjectRecommend")
    public String toProjectRecommend() {
        return "project/projectRecommend";
    }
}
