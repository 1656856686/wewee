package com.pjl.user.controller;

import com.pjl.user.service.UserLogsService;
import com.pjl.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserLogsController {
	
	@Autowired
	private UserLogsService ser;
	
	@RequestMapping("/toUserLogs")
	public String toUserLogs(){
		return "user/userLogs";
	}

}
