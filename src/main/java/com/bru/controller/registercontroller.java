 package com.bru.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.bru.dao.UserDao;

import com.bru.model.UserBean;




@Controller
public class registercontroller {
	@Autowired
	UserDao userDao;

     @RequestMapping( value="/register")
	public String test() {
		
		return "register";
	}
     @RequestMapping( value="/gotoresigter")
 	public String gotoresigter(Model model) {
    	 model.addAttribute("messessError", "");
 		return "gotoresigter";
 	}
	
	@RequestMapping(value ="/gotorrrregister")
	public String rent(String username ,String fristname , String lastname ,String address ,String telephone ,String gender ,
			String password ,String status,Model model) throws SQLException {
		
	
		UserBean bean = new UserBean();
		
			bean.setUsername(username);
			bean.setFristname(fristname);
			bean.setLastname(lastname);
			bean.setAddress(address);
			bean.setTelephone(telephone);
			bean.setGender(gender);
			bean.setPassword(password);
			bean.setStatus(status);
			try { 
				
					userDao.insert(bean);
				
				
			} catch (Exception e) {
				e.printStackTrace();
				
			}

		return "gotoresigter";
	}

}
