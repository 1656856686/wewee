package com.pjl.project.controller;

import com.pjl.project.service.ProjectAuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ProjectAuditController {
    @Autowired
    private ProjectAuditService service;
    @RequestMapping("/toProjectAudit")
    public String toProject() {
        return "project/projectAudit";
    }
}
