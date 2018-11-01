package com.bru.controller;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.RentDao;
import com.bru.model.DetailrentBean;

@Controller
public class Welcomecontroller {
 
	@Autowired
	RentDao rentDao;
	
	@RequestMapping("/index1")
	public String heli() {
		return "index1";
	}
	@RequestMapping("/index2")
	public String index2() {
		return "index2";
	}
  
	@RequestMapping("/index3")
	public String index3() {
		return "adminindex";
	}
  
		
	
	
	@RequestMapping("/withdrawal")
	public String helw() {

		return "withdrawal";
	}
	
	@RequestMapping("/member")
	public String helm() {

		return "member";
	}
	
	@RequestMapping("/admin")
	public String hela() {

		return "admin";
	}
	
	@RequestMapping("/report")
	public String helre(HttpServletRequest res) throws SQLException {
		List<DetailrentBean> list = new ArrayList<>();
		list = rentDao.Trens();
		res.getSession().setAttribute("list", list);
		return "report";
	}
	
	
	@RequestMapping("/gotorerentger")
	public String gotorerentger(int stIdcard,HttpServletRequest res) throws SQLException {
		DetailrentBean bean = new DetailrentBean();
		bean = rentDao.xx(stIdcard);
		res.getSession().setAttribute("bean", bean);
		return "reportce";
	}
	
	
	@RequestMapping("/container")
	public String helc() {

		return "container";
	}
	
	@RequestMapping("/in")
	public String in () {
		return "in";
	}
	
	// end class
}
