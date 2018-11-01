package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.CustomerBean;
import com.bru.model.DetailrentBean;
import com.bru.model.UserBean;
import com.bru.util.ConnectDB;

@Repository
public class AdminDao {

	
public UserBean checkuser(String i) throws SQLException{
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
	UserBean bean = new UserBean();
		try {
		sql.append(" SELECT * FROM user WHERE  username = ?  ");
		
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1,i);


		ResultSet rs = prepared.executeQuery();

		while (rs.next()) {
			
			bean.setUsername(rs.getString("username"));
	
		}

	} catch (Exception e) {
		e.printStackTrace();
		
			
		}
		finally {
			conn.close();
		}
		return bean;
		
	}

public void vvvv(UserBean bean) throws SQLException{
	ConnectDB re = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection rent = re.openConnect();
	try {sql.append("INSERT INTO user(username,password,status,fristname,lastname,address,telephone,gender)VALUES(?,?,?,?,?,?,?,?)");
	prepared = rent.prepareStatement(sql.toString());
	prepared.setString(1, bean.getUsername());
	prepared.setString(2, bean.getPassword());
	prepared.setString(3, bean.getStatus());
	prepared.setString(4, bean.getFristname());
	prepared.setString(5, bean.getLastname());
	prepared.setString(6, bean.getAddress());
	prepared.setString(7, bean.getTelephone());
	prepared.setString(8, bean.getGender());

	
	prepared.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
}

	finally {
		rent.close();
	}
	
}

public List<UserBean> listuse() throws SQLException{
	List<UserBean> list = new ArrayList<>();
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
UserBean bean = new UserBean();
	try {
	sql.append(" SELECT * FROM user ");
	
	prepared = conn.prepareStatement(sql.toString());
	

	ResultSet rs = prepared.executeQuery();

	while (rs.next()) {
				bean = new UserBean();
				bean.setStatus(rs.getString("status"));
				if(bean.getStatus().equals("1")) {
				
				}else {
					bean.setId(rs.getInt("id"));
					
					bean.setUsername(rs.getString("username"));
					bean.setPassword(rs.getString("password"));
					bean.setFristname(rs.getString("fristname"));
					bean.setStatus(rs.getString("status"));
					bean.setLastname(rs.getString("lastname"));
					bean.setAddress(rs.getString("address"));
					bean.setTelephone(rs.getString("telephone"));
					bean.setGender(rs.getString("gender"));
					list.add(bean);
				}
			
	}

} catch (Exception e) {
	e.printStackTrace();
	
		
	}
	finally {
		conn.close();
	}
	return list;
	
}

public List<CustomerBean> listcus() throws SQLException{
	List<CustomerBean> list = new ArrayList<>();
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
	CustomerBean bean = new CustomerBean();
	try {
	sql.append(" SELECT * FROM customer ");
	
	prepared = conn.prepareStatement(sql.toString());
	

	ResultSet rs = prepared.executeQuery();

	while (rs.next()) {
				bean = new CustomerBean();
				bean.setCuId(rs.getInt("cu_id"));
		bean.setCuIdcard(rs.getString("cu_idcard"));
		bean.setCuFname(rs.getString("cu_fname"));
		bean.setCuLastname(rs.getString("cu_lastname"));
		bean.setCuAddress(rs.getString("cu_address"));
		bean.setCuTelephone(rs.getString("cu_telephone"));
		bean.setCuGender(rs.getString("cu_gender"));

		list.add(bean);
	}

} catch (Exception e) {
	e.printStackTrace();
	
		
	}
	finally {
		conn.close();
	}
	return list;
	
}

public void del(int a) throws SQLException{
	ConnectDB re = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection rent = re.openConnect();
	try {sql.append("DELETE FROM user  WHERE id= ?");
	prepared = rent.prepareStatement(sql.toString());
	prepared.setInt(1, a);
	
	
	prepared.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
}

	finally {
		rent.close();
	}
	
}

public void del2(int a) throws SQLException{
	ConnectDB re = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection rent = re.openConnect();
	try {sql.append("DELETE FROM customer  WHERE cu_id= ?");
	prepared = rent.prepareStatement(sql.toString());
	prepared.setInt(1, a);
	
	
	prepared.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
}

	finally {
		rent.close();
	}
	
}
public UserBean userBB(int a) throws SQLException{
	List<UserBean> list = new ArrayList<>();
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
UserBean bean = new UserBean();
	try {
	sql.append(" SELECT * FROM user WHERE id= ? ");
	prepared = conn.prepareStatement(sql.toString());
	prepared.setInt(1, a);

	ResultSet rs = prepared.executeQuery();

	while (rs.next()) {
				bean = new UserBean();
					bean.setId(rs.getInt("id"));
					bean.setUsername(rs.getString("username"));
					bean.setPassword(rs.getString("password"));
					bean.setFristname(rs.getString("fristname"));
					bean.setStatus(rs.getString("status"));
					bean.setLastname(rs.getString("lastname"));
					bean.setAddress(rs.getString("address"));
					bean.setTelephone(rs.getString("telephone"));
					bean.setGender(rs.getString("gender"));
					list.add(bean);
				}
			
	

} catch (Exception e) {
	e.printStackTrace();
	
		
	}
	finally {
		conn.close();
	}
	return bean;
	
}

public void ooo(UserBean bean) throws SQLException{
	ConnectDB re = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection rent = re.openConnect();
	try {sql.append("UPDATE user SET password = ? , status = ? , fristname = ?, lastname = ?, address = ? , telephone = ?, gender = ? WHERE id = ? ");
	prepared = rent.prepareStatement(sql.toString());
	prepared.setString(1, bean.getPassword());
	prepared.setString(2, bean.getStatus());
	prepared.setString(3, bean.getFristname());
	prepared.setString(4, bean.getLastname());
	prepared.setString(5, bean.getAddress());
	prepared.setString(6, bean.getTelephone());
	prepared.setString(7, bean.getGender());
	prepared.setInt(8, bean.getId());
	
	prepared.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
}

	finally {
		rent.close();
	}
	
}

public CustomerBean cusbean(int a) throws SQLException{
	CustomerBean bean = new CustomerBean();
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
	try {
	sql.append(" SELECT * FROM customer WHERE cu_id= ? ");
	
	prepared = conn.prepareStatement(sql.toString());
	prepared.setInt(1, a);

	ResultSet rs = prepared.executeQuery();

	while (rs.next()) {
				bean = new CustomerBean();
				bean.setCuId(rs.getInt("cu_id"));
		bean.setCuIdcard(rs.getString("cu_idcard"));
		bean.setCuFname(rs.getString("cu_fname"));
		bean.setCuLastname(rs.getString("cu_lastname"));
		bean.setCuAddress(rs.getString("cu_address"));
		bean.setCuTelephone(rs.getString("cu_telephone"));
		bean.setCuGender(rs.getString("cu_gender"));

	}

} catch (Exception e) {
	e.printStackTrace();
	
		
	}
	finally {
		conn.close();
	}
	return bean;
	
}
public void ooo2(UserBean bean) throws SQLException{
	ConnectDB re = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection rent = re.openConnect();
	try {sql.append("UPDATE customer SET cu_fname = ? , cu_lastname = ? , cu_address = ?, cu_telephone = ?, cu_gender = ? WHERE cu_id = ? ");
	prepared = rent.prepareStatement(sql.toString());
	prepared.setString(1, bean.getFristname());
	prepared.setString(2, bean.getLastname());
	prepared.setString(3, bean.getAddress());
	prepared.setString(4, bean.getTelephone());
	prepared.setString(5, bean.getGender());
	prepared.setInt(6, bean.getId());
	
	prepared.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
}

	finally {
		rent.close();
	}
	
}

//end class  
}
