package com.pjl.project.service.impl;

import com.pjl.project.dao.ProjectAuditDao;
import com.pjl.project.entity.Projects;
import com.pjl.project.service.ProjectAuditService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service
public class ProjectAuditServiceImpl implements ProjectAuditService {


    @Autowired
    private ProjectAuditDao dao;

    @Override
    public List<Projects> getProByAudit(Projects projects) {
        return dao.getProByAudit(projects);
    }
}
