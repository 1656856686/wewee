package com.pjl.project.service;

import com.pjl.project.dao.ProjectAuditDao;
import com.pjl.project.entity.Projects;
import org.springframework.stereotype.Service;

import java.util.List;

public interface ProjectAuditService {

    List<Projects> getProByAudit(Integer ps_type);

    Projects getProById(Integer ps_id);
}
