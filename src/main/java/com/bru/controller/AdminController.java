package com.bru.controller;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.AdminDao;
import com.bru.dao.RentDao;
import com.bru.model.CustomerBean;
import com.bru.model.DetailrentBean;
import com.bru.model.UserBean;

@Controller
public class AdminController {

	@Autowired
	AdminDao  adminDao;
	
	@Autowired
	RentDao rentDao;
	
	@RequestMapping( value="/admin1")
	public String admin1(Model model) {
		model.addAttribute("messessError", "");
		return "admin1";
	}	
	@RequestMapping("/admin1ed")
	public String admin1ed(Model model, String username ,String password,String gender ,String fristname ,String lastname ,String address ,String telephone ,String status) throws SQLException {
		UserBean bean = new UserBean();
		bean.setUsername(username);
		bean = adminDao.checkuser(username);
		if(bean.getUsername() == null) {
			bean.setAddress(address);
			bean.setFristname(fristname);
			bean.setGender(gender);
			bean.setUsername(username);
			bean.setLastname(lastname);
			bean.setPassword(password);
			bean.setStatus(status);
			bean.setTelephone(telephone);
			adminDao.vvvv(bean);
			model.addAttribute("messessError", "L");
		}
		else {
			model.addAttribute("messessError", "F");
		}
		
		 
		 
		return "admin1";
	}	
	
	@RequestMapping("/reported")
	public String reported(HttpServletRequest res) throws SQLException {
		List<DetailrentBean> list = new ArrayList<>();
		list = rentDao.Trens();
		res.getSession().setAttribute("list", list);
		return "admin2";
	}
	@RequestMapping("/gotorerentger2")
	public String gotorerentger(int stIdcard,HttpServletRequest res) throws SQLException {
		DetailrentBean bean = new DetailrentBean();
		bean = rentDao.xx(stIdcard);
		res.getSession().setAttribute("bean", bean);
		return "adminreportce";
	}
	
	@RequestMapping("/remember")
	public String remember(HttpServletRequest res) throws SQLException {
		 List<UserBean> listuser = new ArrayList<>();
		 List<CustomerBean> listcus = new ArrayList<>();
		 listuser = adminDao.listuse();
		 listcus = adminDao.listcus();
			res.getSession().setAttribute("listuser", listuser);
			res.getSession().setAttribute("listcus", listcus);
		return "admin3";
	}	
	
	@RequestMapping("/del1")
	public String del1(HttpServletRequest res ,String regid) throws SQLException {
		 List<UserBean> listuser = new ArrayList<>();
		 List<CustomerBean> listcus = new ArrayList<>();
		 int a =Integer.valueOf(regid);
		  adminDao.del(a);
		 listuser = adminDao.listuse();
		 listcus = adminDao.listcus();
			res.getSession().setAttribute("listuser", listuser);
			res.getSession().setAttribute("listcus", listcus);
		return "admin3";
	}
	
	@RequestMapping("/del2")
	public String del2(HttpServletRequest res ,String regid2) throws SQLException {
		 List<UserBean> listuser = new ArrayList<>();
		 List<CustomerBean> listcus = new ArrayList<>();
		 int a =Integer.valueOf(regid2);
		  adminDao.del2(a);
		 listuser = adminDao.listuse();
		 listcus = adminDao.listcus();
			res.getSession().setAttribute("listuser", listuser);
			res.getSession().setAttribute("listcus", listcus);
		return "admin3";
	}
	
	@RequestMapping("/update1")
	public String update1(HttpServletRequest res,String regid) throws SQLException {
		UserBean bean = new  UserBean();
		int a = Integer.valueOf(regid);
		bean = adminDao.userBB(a);
		
			res.getSession().setAttribute("bean", bean);
			
		return "admin4";
	}
	
	@RequestMapping("/up2")
	public String up2(HttpServletRequest res,String regs,Model model, String username ,String password,String gender ,String fristname ,String lastname ,String address ,String telephone ,String status) throws SQLException {
		UserBean bean = new UserBean();
 int a = Integer.valueOf(regs);
 			bean.setId(a);
			bean.setAddress(address);
			bean.setFristname(fristname);
			bean.setGender(gender);
			bean.setUsername(username);
			bean.setLastname(lastname);
			bean.setPassword(password);
			bean.setStatus(status);
			bean.setTelephone(telephone);
			adminDao.ooo(bean);
		
	
		model.addAttribute("messessError", "");
		 List<UserBean> listuser = new ArrayList<>();
		 List<CustomerBean> listcus = new ArrayList<>();
		 listuser = adminDao.listuse();
		 listcus = adminDao.listcus();
		 res.getSession().setAttribute("listuser", listuser);
			res.getSession().setAttribute("listcus", listcus);
		return "admin3";
	}	
	@RequestMapping("/update2")
	public String update2(HttpServletRequest res,String regid2) throws SQLException {
		int a = Integer.valueOf(regid2);
		CustomerBean bean = new CustomerBean();
		bean = adminDao.cusbean(a);
			res.getSession().setAttribute("bean", bean);
			
		return "admin5";
	}
	@RequestMapping("/up3")
	public String up3(HttpServletRequest res,String reg2,Model model,String gender ,String fristname ,String lastname ,String address ,String telephone ) throws SQLException {
		UserBean bean = new UserBean();
 int a = Integer.valueOf(reg2);
 			bean.setId(a);
			bean.setAddress(address);
			bean.setFristname(fristname);
			bean.setGender(gender);
			bean.setLastname(lastname);
			bean.setTelephone(telephone);
			adminDao.ooo2(bean);
		
	
		model.addAttribute("messessError", "");
		 List<UserBean> listuser = new ArrayList<>();
		 List<CustomerBean> listcus = new ArrayList<>();
		 listuser = adminDao.listuse();
		 listcus = adminDao.listcus();
		 res.getSession().setAttribute("listuser", listuser);
			res.getSession().setAttribute("listcus", listcus);
		return "admin3";
	}
	

}