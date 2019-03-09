package com.pjl.project.dao;

import com.pjl.project.entity.Projects;

import java.util.List;

public interface ProjectCommentDao {


    List<Projects> getProjectCommentByPs_type(Integer ps_type);
}
