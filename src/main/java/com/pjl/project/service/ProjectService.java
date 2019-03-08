package com.pjl.project.service;

        import com.pjl.project.entity.Projects;

        import java.util.List;

public interface ProjectService {
    List<Projects> getPro(Projects projects);
    Projects getProById(Integer ps_id);
}
