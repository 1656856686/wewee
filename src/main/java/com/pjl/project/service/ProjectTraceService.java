package com.pjl.project.service;

import com.pjl.project.entity.Projects;

import java.util.List;

public interface ProjectTraceService {

    List<Projects> getProjectTraceByPs_type(Integer ps_type);
}
