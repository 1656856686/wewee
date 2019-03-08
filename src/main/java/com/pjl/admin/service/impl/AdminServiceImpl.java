package com.pjl.admin.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.pjl.admin.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjl.admin.dao.AdminDao;
import com.pjl.admin.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao dao;
	
	@Override
	public Map<String, Object>  getAdmin(HttpSession session, Admin admin) {
		Map<String,Object> map = new HashMap<>();
		//查询用户
		Admin user =  dao.getAdminByUsername(admin.getAdmin_name());
		if(user!= null){
			if(user.getAdmin_password().equals(admin.getAdmin_password())){
				session.setAttribute("user", admin);
				map.put("success",true);
				map.put("msg", "登录成功!");
			}else{
				map.put("success",false);
				map.put("msg", "密码错误!");
			}
		}else{
			map.put("success",false);
			map.put("msg", "用户不存在!");
		}
		return map;
	}
	
}
