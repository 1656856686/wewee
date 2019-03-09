package com.pjl.project.dao;

import com.pjl.project.entity.Projects;

import java.util.List;

public interface ProjectTraceDao {


    List<Projects> getProjectTraceByPs_type(Integer ps_type);
}
