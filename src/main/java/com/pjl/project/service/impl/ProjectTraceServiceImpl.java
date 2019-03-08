package com.pjl.project.service.impl;

import com.pjl.project.dao.ProjectTraceDao;
import com.pjl.project.service.ProjectTraceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectTraceServiceImpl implements ProjectTraceService {


    @Autowired
    private ProjectTraceDao dao;

}
