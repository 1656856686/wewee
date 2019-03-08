package com.pjl.project.controller;

import com.pjl.project.entity.Projects;
import com.pjl.project.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProjectController {

	@Autowired
	private ProjectService service;


	@RequestMapping("/toProject")
	public String toProject() {
		return "project/project";
	}
	@RequestMapping("/project/projectTab")
	public String projectTab(Integer ps_id,HttpServletRequest session){
		Projects projects=	service.getProById(ps_id);
		session.setAttribute("projects",projects);
		return "project/projectTab";
}
	@RequestMapping("/project/getPro")
	@ResponseBody
	public Map<String,Object> getPro(Projects projects,Integer page,Integer limit){
		Map<String,Object> map = new HashMap<>();
		List<Projects> list = service.getPro(projects);
		map.put("code",0);
		map.put("msg","list");
		map.put("count", list.size());
		map.put("data",list.subList((page-1)*limit>list.size()?0:(page-1)*limit , limit*page > list.size()?list.size():limit*page));
		return  map;
	}
}
