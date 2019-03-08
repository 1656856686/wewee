package com.pjl.project.controller;

import com.pjl.project.entity.Projects;
import com.pjl.project.service.ProjectAuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class ProjectAuditController {
    @Autowired
    private ProjectAuditService service;
    @RequestMapping("/toProjectAudit")
    public String toProjectAudit() {
        return "project/projectAudit";
    }

    @RequestMapping("/project/getProByAudit")
    @ResponseBody
    public Map<String,Object> getProByAudit(Projects projects,Integer page,Integer limit){
        Map<String,Object> map=new HashMap<>();
        List<Projects> list= service.getProByAudit(projects);
        map.put("count", list.size());
        map.put("data",list.subList((page-1)*limit>list.size()?0:(page-1)*limit , limit*page > list.size()?list.size():limit*page));
        return  map;
    }

}
