package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.ContainerBean;

import com.bru.util.ConnectDB;

@Repository
public class ApiDao {

	
	public  List<ContainerBean>  ch23()throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null ;
		StringBuilder sql = new StringBuilder();
		Connection cc = con.openConnect();
		ContainerBean bean = new ContainerBean();
		List<ContainerBean> list = new ArrayList<>();

		try {
 
			sql.append( " SELECT * FROM container " );
		
		prepared = cc.prepareStatement(sql.toString());
	
			

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ContainerBean();
			bean.setCID(rs.getString("C_ID"));
			bean.setCName(rs.getString("C_Name"));
			bean.setCPrice(rs.getInt("C_Price"));
			bean.setNumber(rs.getInt("Number"));
	
			list.add(bean);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
	}
		finally {
			cc.close();
		}
		return list;
	}
	//end class
}
