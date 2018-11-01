package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.bru.model.AdddisBean;

import com.bru.util.ConnectDB;
@Repository
public class AdddisDao {
	public void adddis(AdddisBean bean) throws SQLException{
	ConnectDB re = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection add = re.openConnect();
	try {sql.append("INSERT INTO adddis(ad_day,ad_mouth,ad_year,c_id,c_name,ad_add,ad_dis,ad_balance,ad_result)VALUES(?,?,?,?,?,?,?,?,?)");
	prepared = add.prepareStatement(sql.toString());
	prepared.setInt(1, bean.getDay());
	prepared.setInt(2, bean.getMouth());
	prepared.setInt(3, bean.getYear());
	prepared.setString(4, bean.getCID());
	prepared.setString(5, bean.getCName());
	prepared.setInt(6, bean.getAdd());
	prepared.setInt(7, bean.getDiss());
	prepared.setInt(8, bean.getBalance());
	prepared.setInt(9, bean.getResult());
	prepared.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
}

	finally {
		add.close();
	}
	
}

}
