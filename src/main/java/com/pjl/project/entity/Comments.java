package com.pjl.project.entity;

import com.pjl.user.entity.User;

import java.util.List;

public class Comments {
    private  Integer cm_id;
    private  Integer cm_us_id;
    private  Integer cm_ps_id;
    private  String  cm_content;


    public Comments(Integer cm_id, Integer cm_us_id, Integer cm_ps_id, String cm_content) {
        this.cm_id = cm_id;
        this.cm_us_id = cm_us_id;
        this.cm_ps_id = cm_ps_id;
        this.cm_content = cm_content;
    }
    public Comments(){
        super ();
    }

    public Integer getCm_id() {
        return cm_id;
    }

    public void setCm_id(Integer cm_id) {
        this.cm_id = cm_id;
    }

    public Integer getCm_us_id() {
        return cm_us_id;
    }

    public void setCm_us_id(Integer cm_us_id) {
        this.cm_us_id = cm_us_id;
    }

    public Integer getCm_ps_id() {
        return cm_ps_id;
    }

    public void setCm_ps_id(Integer cm_ps_id) {
        this.cm_ps_id = cm_ps_id;
    }

    public String getCm_content() {
        return cm_content;
    }

    public void setCm_content(String cm_content) {
        this.cm_content = cm_content;
    }



}
