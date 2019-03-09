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
    public List<Projects> getProByAudit(Integer ps_type) {
        return dao.getProByAudit(ps_type);
    }

    @Override
    public Projects getProById(Integer ps_id) {
        return dao.getProById(ps_id);
    }

    @Override
    public void upProjectByPs_id(Integer ps_id) {
        dao.upProjectByPs_id(ps_id);
    }

    @Override
    public void upProjectById(Integer ps_id) {
        dao.upProjectById(ps_id);
    }
}
