package com.pjl.user.controller;

import com.pjl.user.service.NameAuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class NameAuditController {
	
	@Autowired
	private NameAuditService ser;
	
	@RequestMapping("/toNameAudit")
	public String toNameAudit(){
		return "user/nameAudit";
	}

}
