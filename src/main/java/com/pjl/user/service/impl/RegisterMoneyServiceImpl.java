package com.pjl.user.service.impl;


import com.pjl.user.dao.RegisterMoneyDao;
import com.pjl.user.service.NameAuditService;
import com.pjl.user.service.RegisterMoneyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class RegisterMoneyServiceImpl implements RegisterMoneyService {

	@Autowired
	private RegisterMoneyDao dao;
}

	
