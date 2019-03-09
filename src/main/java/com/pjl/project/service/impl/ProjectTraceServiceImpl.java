package com.pjl.project.service.impl;

import com.pjl.project.dao.ProjectTraceDao;
import com.pjl.project.entity.Projects;
import com.pjl.project.service.ProjectTraceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectTraceServiceImpl implements ProjectTraceService {


    @Autowired
    private ProjectTraceDao dao;

    @Override
    public List<Projects> getProjectTraceByPs_type(Integer ps_type) {


        return dao.getProjectTraceByPs_type(ps_type);
    }
}
