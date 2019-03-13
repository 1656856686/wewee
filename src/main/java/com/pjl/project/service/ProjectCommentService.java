package com.pjl.project.service;

import com.pjl.project.entity.Comments;
import com.pjl.project.entity.Projects;

import java.util.List;

public interface ProjectCommentService {

    List<Projects> getProjectCommentByPs_type(Integer ps_type);

    List<Comments> getComments(Integer ps_id);
}
