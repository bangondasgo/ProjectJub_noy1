package com.bru.controller;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.ApiDao;
import com.bru.dao.RentDao;
import com.bru.model.ContainerBean;
import com.bru.model.DetailrentBean;

@Controller
public class manu2Controller {

	@Autowired
	RentDao rentDao;
	@Autowired
	ApiDao apiDao;
	
	@RequestMapping(value="/retest")
	public String retest(HttpServletRequest re) throws ParseException, SQLException {
		List<DetailrentBean> list = new ArrayList<>();
		DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date today = sdf.parse("14/11/2018");
		Calendar cal = Calendar.getInstance();
		today = new Date();
		cal.setTime(today);
		int M = 0, D = 0, Y = 0;
		M = cal.get(Calendar.MONTH);
		D = cal.get(Calendar.DATE);
		Y = cal.get(Calendar.YEAR);
		list = rentDao.retest(D, M, Y);
		re.getSession().setAttribute("list", list);
		return "retest";
	}
	
	
	@RequestMapping(value="/retested")
	public String retested(HttpServletRequest re) throws ParseException, SQLException {
		List<DetailrentBean> list = new ArrayList<>();
		DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date today = sdf.parse("14/11/2018");
		Calendar cal = Calendar.getInstance();
		today = new Date();
		cal.setTime(today);
		int M = 0, D = 0, Y = 0;
		M = cal.get(Calendar.MONTH);
		D = cal.get(Calendar.DATE);
		Y = cal.get(Calendar.YEAR);
		list = rentDao.retested(D, M, Y);
		re.getSession().setAttribute("list", list);
		return "retest";
	}
	
	
	@RequestMapping(value="/delser")
	public String retest2(HttpServletRequest re, int stIdcard) throws ParseException, SQLException {
		List<DetailrentBean> list = new ArrayList<>();
		DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date today = sdf.parse("14/11/2018");
		Calendar cal = Calendar.getInstance();
		today = new Date();
		cal.setTime(today);
		int M = 0, D = 0, Y = 0;
		M = cal.get(Calendar.MONTH);
		D = cal.get(Calendar.DATE);
		Y = cal.get(Calendar.YEAR);
		rentDao.update2(stIdcard);
		list = rentDao.retest(D, M, Y);
		re.getSession().setAttribute("list", list);
		return "retest";
	}
	
	@RequestMapping(value="/retest2")
	public String retest2(HttpServletRequest re) throws ParseException, SQLException {
		List<DetailrentBean> list = new ArrayList<>();
		list = rentDao.Trens23();
		re.getSession().setAttribute("list", list);
		return "retest2";
	}
	@RequestMapping(value="/retest3")
	public String retest3(HttpServletRequest re,Model model) throws ParseException, SQLException {
		  List<ContainerBean> list = new ArrayList<>();
		  list = apiDao.ch23();
		  re.getSession().setAttribute("list", list);
		 model.addAttribute("messessError", "");
		return "retest3";
	}
	@RequestMapping(value="/gotorpse")
	public String gotorpse(HttpServletRequest re,Model model,int CB001,int CD001,int CC002,int CC001) throws  SQLException {
	List<ContainerBean> list = new ArrayList<>();
		list=rentDao.vvvv4();
		int a = 0 , b = 0, c = 0,d = 0;
	
		a = list.get(0).getNumber() + CB001;
		b = list.get(1).getNumber() + CC001;
		c =list.get(2).getNumber() + CC002;
		d = list.get(3).getNumber() + CD001;
		rentDao.update(a, "CB001");
		rentDao.update(b, "CC001");
		rentDao.update(c, "CC002");
		rentDao.update(d, "CD001");
		
		  list = apiDao.ch23();
		  re.getSession().setAttribute("list", list);
		 model.addAttribute("messessError", "L");
		return "retest3";
	}
	// end class  
}
