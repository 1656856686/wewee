package com.pjl.project.dao;

import com.pjl.project.entity.Projects;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProjectAuditDao {


    List<Projects> getProByAudit(Integer ps_type);

    Projects getProById(Integer ps_id);

    void upProjectByPs_id(Integer ps_id);

    void upProjectById(Integer ps_id);
}
