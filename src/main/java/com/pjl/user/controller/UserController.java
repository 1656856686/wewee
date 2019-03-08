package com.pjl.user.controller;
import com.pjl.admin.entity.Admin;
import com.pjl.admin.service.AdminService;
import com.pjl.user.entity.User;
import com.pjl.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService ser;
	
	@RequestMapping("/toUser")
	public String toUser(){
		return "user/user";
	}

}
