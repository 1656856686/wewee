package com.pjl.project.controller;

import com.pjl.project.entity.Projects;
import com.pjl.project.service.ProjectTraceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProjectTraceController {
    @Autowired
    private ProjectTraceService service;
    @RequestMapping("/toProjectTrace")
    public String toProjectTrace() {
        return "project/projectTrace";
    }


    @RequestMapping("/project/getProjectTraceByPs_type")
    @ResponseBody
    public Map<String,Object> getProjectTraceByPs_type(Integer ps_type , Integer page, Integer limit){
        Map<String,Object> map=new HashMap<>();
        List<Projects> list= service.getProjectTraceByPs_type(ps_type);
        System.out.println(ps_type);
        System.out.println(list);
        map.put("code",0);
        map.put("msg","list");
        map.put("count", list.size());
        map.put("data",list.subList((page-1)*limit>list.size()?0:(page-1)*limit , limit*page > list.size()?list.size():limit*page));
        return  map;
    }
}
