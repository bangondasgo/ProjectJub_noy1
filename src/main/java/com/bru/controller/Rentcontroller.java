package com.bru.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.RentDao;
import com.bru.model.DetailrentBean;

@Controller
public class Rentcontroller {
	@Autowired
	RentDao rentDao;
	@RequestMapping(value="/rent")
	public String tests() {
		return "rent";
}
	@RequestMapping(value="/rent22")
public String tes(int CB001, int CC001, int CC002 , int CD001 , String idcard,int sara,int mmmm,HttpServletRequest re ,int ho1 ,int ho2 ,int ho3,int ho4) throws ParseException {
		DetailrentBean bean = new DetailrentBean();
		DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date today = sdf.parse("14/11/2018");
		Calendar cal = Calendar.getInstance();
		String Mo[] = { "มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม",
				"กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม" };
		today = new Date();
		cal.setTime(today);
		int M = 0, D = 0, Y = 0;
		M = cal.get(Calendar.MONTH);
		D = cal.get(Calendar.DATE);
		Y = cal.get(Calendar.YEAR);
		bean.setCB001(CB001);
		bean.setCC001(CC001);
		bean.setCC002(CC002);
		bean.setCD001(CD001);
		bean.setIdcard(idcard);
		bean.setNumber(sara);
		bean.setDatedateday(D);
		bean.setDatedatemont(M);
		bean.setDatedateyear(Y);
		bean.setAll(mmmm);
		bean.setSimpleyear(Mo[M]);
		int a = 0,b = 0,c = 0,d = 0 ;
	    a  = ho1 - CB001;
	    b = ho2 - CC001;
	    c  = ho3 - CC002;
	    d = ho4 - CD001 ;
		try {
			rentDao.insert(bean);
			rentDao.update(a, "CB001");
			rentDao.update(b, "CC001");
			rentDao.update(c, "CC002");
			rentDao.update(d, "CD001");
			re.getSession().setAttribute("bean", bean);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "reportce";
		
		
	}
}