package com.bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.UserDao;

import com.bru.model.CustomerBean;
import com.bru.model.UserBean;

@Controller
public class logincontroller {
	
    @Autowired
	UserDao userDao;
    
    int stmember;
    
@RequestMapping(value="/")
public String test(Model model) {
	model.addAttribute("messessError", "");
	return "login";
}
//resgis customer
@RequestMapping(value ="/gotoreg2")
public String gotoreg2(String idcard ,String fristname , String lastname ,String address ,String telephone,String gender,Model model) throws SQLException {
	String nus="" ;
	UserBean bean2 = new UserBean();
	CustomerBean bean = new CustomerBean();
	bean2 = userDao.CheckNewUser(idcard);

	
	if(bean2.getUsername() == null) {
		
		bean.setCuAddress(address);
		bean.setCuFname(fristname);
		bean.setCuLastname(lastname);
		bean.setCuIdcard(idcard);
		bean.setCuTelephone(telephone);
		bean.setCuGender(gender);
		bean.setCuMember(stmember);
		try { 
			
			userDao.insert2(bean);
				nus ="gotoresigter";
				 model.addAttribute("messessError", "L");
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	else {
		nus = "gotoresigter";
		 model.addAttribute("messessError", "G");
	}
	
	

	return nus;
}


@RequestMapping(value="/login")
public String test2 (String idcard, String password,HttpServletRequest request , Model model )throws SQLException{
	
	String page ="";
	
	UserBean bean = new UserBean();
	UserBean bb = new UserBean();
	
	try {
		bean = userDao.xx(idcard,password) ;
		bb=userDao.fileById(bean.getUsername()); 
		
	if (bean.getUsername() != null) {
		
		if(bean.getStatus().equals("1")){	
			request.getSession().setAttribute("222", bb);
			page = "adminindex";
		}
		else if(bean.getStatus().equals("2")){
		
			request.getSession().setAttribute("222", bb);
			stmember = bean.getId();
			page = "index1";	
		}
		else if (bean.getStatus().equals("3")) {	
			request.getSession().setAttribute("222", bb);
			stmember = bean.getId();
			page = "index2";
		
			//,HttpServletRequest request , Model model
		}
	}
	else {
		model.addAttribute("messessError", "F");
		page = "login";
	
	}
	}catch (Exception e) {
		e.printStackTrace();
	
	}
	return page ;
}
@RequestMapping(value="/logout")
public String logout(Model model) {
	model.addAttribute("messessError", "L");
	return "login";
}


}

 