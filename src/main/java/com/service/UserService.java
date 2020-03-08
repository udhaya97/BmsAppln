package com.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.model.UserReg;
@Service
@Transactional
public class UserService implements UserServiceIntf {

	@Autowired
	UserDao uServ;
	
	@Override
	public void save(UserReg user) {
		uServ.save(user);

	}

	@Override
	public UserReg findByName(String name) {
		UserReg ug = uServ.findByName(name);
		return ug;
	}

	@Override
	public UserReg findbyid(int id) {
		UserReg ure =uServ.findbyid(id);
		return ure;
	}

}
