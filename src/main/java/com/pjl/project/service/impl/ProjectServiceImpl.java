package com.pjl.project.service.impl;

import com.pjl.project.dao.ProjectDao;
import com.pjl.project.entity.Projects;
import com.pjl.project.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    private ProjectDao ss;

    @Override
    public List<Projects> getPro(Projects projects) {
        return ss.getPro(projects);
    }

    @Override
    public Projects getProById(Integer ps_id) {
        return ss.getProById(ps_id);
    }


}
