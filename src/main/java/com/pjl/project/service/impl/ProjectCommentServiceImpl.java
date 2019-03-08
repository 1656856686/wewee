package com.pjl.project.service.impl;

import com.pjl.project.dao.ProjectCommentDao;
import com.pjl.project.service.ProjectCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectCommentServiceImpl implements ProjectCommentService {


    @Autowired
    private ProjectCommentDao dao;

}
