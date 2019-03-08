package com.pjl.admin.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.pjl.admin.entity.Admin;

public interface AdminService {


	Map<String, Object> getAdmin(HttpSession session, Admin admin);
}
