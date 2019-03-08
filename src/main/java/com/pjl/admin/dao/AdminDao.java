package com.pjl.admin.dao;

import com.pjl.admin.entity.Admin;

public interface AdminDao {
	Admin getAdminByUsername(String admin_name);

}
