package com.dao;

import org.springframework.stereotype.Repository;

import com.model.UserReg;

@Repository
public interface UserDaoIntf {
	void save(UserReg user);
	UserReg findByName(String name);
	UserReg findbyid(int id);
	

}
