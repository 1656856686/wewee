package com.pjl.user.controller;

import com.pjl.user.service.RegisterMoneyService;
import com.pjl.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class RegisterMoneyController {
	
	@Autowired
	private RegisterMoneyService ser;
	
	@RequestMapping("/toRegisterMoney")
	public String toRegisterMoney(){
		return "user/registerMoney";
	}

}
