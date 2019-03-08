package com.pjl.project.service.impl;

import com.pjl.project.dao.ProjectAuditDao;
import com.pjl.project.service.ProjectAuditService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class ProjectAuditServiceImpl implements ProjectAuditService {


    @Autowired
    private ProjectAuditDao dao;

}
