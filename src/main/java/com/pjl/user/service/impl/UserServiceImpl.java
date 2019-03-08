package com.pjl.user.service.impl;


import com.pjl.user.dao.UserDao;
import com.pjl.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao dao;
}

	
