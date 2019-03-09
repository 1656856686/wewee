package com.pjl.project.controller;

import com.pjl.project.entity.Projects;
import com.pjl.project.service.ProjectAuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
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
    @RequestMapping("/project/projectAuditTab")
    public String projectAuditTab(Integer ps_id, HttpServletRequest session){
        Projects projects=	service.getProById(ps_id);
        session.setAttribute("projects",projects);
        return "project/projectAuditTab";
    }
    @RequestMapping("/project/getProByAudit")
    @ResponseBody
    public Map<String,Object> getProByAudit(Integer ps_type ,Integer page,Integer limit){
        Map<String,Object> map=new HashMap<>();
        List<Projects> list= service.getProByAudit(ps_type);
        map.put("code",0);
        map.put("msg","list");
        map.put("count", list.size());
        map.put("data",list.subList((page-1)*limit>list.size()?0:(page-1)*limit , limit*page > list.size()?list.size():limit*page));
        return  map;
    }


    @RequestMapping(" /project/upProjectByPs_id")
    @ResponseBody
    public Map<String,Object> upProjectByPs_id(Integer ps_id){
        Map<String,Object> map =new HashMap<>();
        try {
            service.upProjectByPs_id(ps_id);
            map.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success", false);
        }
        return map;
    }
    @RequestMapping("/project/upProjectById")
    @ResponseBody
    public Map<String,Object> upProjectById(Integer ps_id){
        Map<String,Object> map =new HashMap<>();
        try {
            service.upProjectById(ps_id);
            map.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success", false);
        }
        return map;
    }

}
