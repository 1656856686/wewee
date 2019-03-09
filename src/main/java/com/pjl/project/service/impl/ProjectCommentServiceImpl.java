package com.pjl.project.service.impl;

import com.pjl.project.dao.ProjectCommentDao;
import com.pjl.project.entity.Comments;
import com.pjl.project.entity.Projects;
import com.pjl.project.service.ProjectCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectCommentServiceImpl implements ProjectCommentService {


    @Autowired
    private ProjectCommentDao dao;

    @Override
    public List<Projects> getProjectCommentByPs_type(Integer ps_type) {
        return dao.getProjectCommentByPs_type(ps_type);
    }

    @Override
    public Comments getComments() {
        return dao.getComments();
    }
}
