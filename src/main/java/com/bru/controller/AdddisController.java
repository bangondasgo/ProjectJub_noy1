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

import com.bru.dao.AdddisDao;
import com.bru.model.AdddisBean;

@Controller
public class AdddisController {
	
	
		@Autowired
		AdddisDao adddisDao;
		@RequestMapping(value="/adddis")
		public String tests() {
			return "adddis";
	}
		@RequestMapping(value="/adddiss")
	public String tes( String CID,String CName,int Add,int Diss,int Balance, HttpServletRequest re ,int result) throws ParseException {
			AdddisBean bean = new AdddisBean();
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
			bean.setDay(D);
			bean.setMouth(M);
			bean.setYear(Y);
			bean.setCID(CID);
			bean.setCName(CName);
			bean.setAdd(Add);
			bean.setDiss(Diss);
			bean.setBalance(Balance);
			bean.setSimpleyear(Mo[M]);
			bean.setResult(result);
		
		   
			try {
				adddisDao.adddis(bean);
			
				re.getSession().setAttribute("bean", bean);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "adddis";
			
			
		}
	
}