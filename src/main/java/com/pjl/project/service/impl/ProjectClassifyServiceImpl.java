package com.pjl.project.service.impl;

import com.pjl.project.dao.ProjectClassifyDao;
import com.pjl.project.service.ProjectClassifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectClassifyServiceImpl implements ProjectClassifyService {


    @Autowired
    private ProjectClassifyDao dao;

}
