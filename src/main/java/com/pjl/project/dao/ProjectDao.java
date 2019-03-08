package com.pjl.project.dao;

import com.pjl.project.entity.Projects;

import java.util.List;

public interface ProjectDao {

    List<Projects> getPro(Projects projects);

    Projects getProById(Integer ps_id);
}
