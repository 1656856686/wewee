package com.pjl.project.service.impl;

import com.pjl.project.dao.ProjectCommentDao;
import com.pjl.project.dao.ProjectRecommendDao;
import com.pjl.project.service.ProjectClassifyService;
import com.pjl.project.service.ProjectRecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectRecommendServiceImpl implements ProjectRecommendService {


    @Autowired
    private ProjectRecommendDao dao;

}
