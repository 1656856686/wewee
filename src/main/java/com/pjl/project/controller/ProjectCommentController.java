package com.pjl.project.controller;

import com.pjl.project.entity.Comments;
import com.pjl.project.entity.Projects;
import com.pjl.project.service.ProjectCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProjectCommentController {
    @Autowired
    private ProjectCommentService service;

    @RequestMapping("/toProjectComment")
    public String toProjectComment() {
        return "project/projectComment";
    }

    @RequestMapping("/project/getProjectCommentByPs_type")
    @ResponseBody
    public Map<String, Object> getProjectCommentByPs_type(Integer ps_type, Integer page, Integer limit) {
        Map<String, Object> map = new HashMap<>();
        List<Projects> list = service.getProjectCommentByPs_type(ps_type);
        System.out.println(ps_type);
        System.out.println(list);
        map.put("code", 0);
        map.put("msg", "list");
        map.put("count", list.size());
        map.put("data", list.subList((page - 1) * limit > list.size() ? 0 : (page - 1) * limit, limit * page > list.size() ? list.size() : limit * page));
        return map;
    }
    @RequestMapping("/project/getProjectCommentsTab")
    public String getProjectCommentsTab() {
        return "project/projectCommentsTab";
    }
    @RequestMapping("/project/getProjectComments")
    @ResponseBody
    public Map<String,Object> projectTab(Integer ps_id, Integer page, Integer limit) {
        Map<String,Object> map=new HashMap<>();
        List<Comments> list  = service.getComments(ps_id);
        map.put("code", 0);
            map.put("msg", "list");
         map.put("count", list.size());
         map.put("data", list.subList((page - 1) * limit > list.size() ? 0 : (page - 1) * limit, limit * page > list.size() ? list.size() : limit * page));

        return map;
    }
}