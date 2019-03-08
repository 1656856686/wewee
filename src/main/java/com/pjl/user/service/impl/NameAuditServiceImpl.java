package com.pjl.user.service.impl;


import com.pjl.user.dao.NameAuditDao;
import com.pjl.user.service.NameAuditService;
import com.pjl.user.service.UserLogsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class NameAuditServiceImpl implements NameAuditService {

	@Autowired
	private NameAuditDao dao;
}

	
