package com.pjl.project.dao;

import com.pjl.project.entity.Projects;

import java.util.List;

public interface ProjectAuditDao {


    List<Projects> getProByAudit(Integer ps_type);

    Projects getProById(Integer ps_id);
}
