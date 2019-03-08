package com.pjl.admin.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pjl.admin.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pjl.admin.service.AdminService;
import com.pjl.util.YzmUtil;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService ser;
	
	@RequestMapping("/toIndex")
	public String toIndex(){
		return "index";
	}
	
	@RequestMapping("/admin/yzm")
	public void getYzm(HttpServletRequest request,HttpServletResponse response){
		try {
			YzmUtil.CreateYZM(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/admin/getYzm")
	@ResponseBody
	public Map<String,Object> getYzm(HttpSession session){
		Map<String,Object> map = new HashMap<>();
		map.put("yzm", session.getAttribute("yzm"));
		return map;
	}
	
	@RequestMapping("/admin/admin")
	@ResponseBody
	public Map<String,Object> getAdmin(HttpSession session, Admin admin){
		Map<String,Object> map = new HashMap<>();
		System.out.println(admin);
		try {
			map = ser.getAdmin(session, admin);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("seccess", false);
			map.put("msg", "系统异常!");
		}
		return map;
	}
}
