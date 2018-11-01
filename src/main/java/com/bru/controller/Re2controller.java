package com.bru.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.UserDao;

@Controller
public class Re2controller {
	@Autowired
	UserDao userDao;
	@RequestMapping(value="/re2")
	public String test() {
		return "re2";
		
		
	}

}
