package com.bru.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.stereotype.Repository;

import com.bru.model.CustomerBean;
import com.bru.model.UserBean;
import com.bru.util.ConnectDB;





@Repository
public class UserDao {
	
	public UserBean xx(String i,String p) throws SQLException{
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
	UserBean bean = new UserBean();
		try {
		sql.append(" SELECT * FROM user WHERE  username = ? AND password = ? ");
		
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1,i);
		prepared.setString(2, p);

		ResultSet rs = prepared.executeQuery();

		while (rs.next()) {
			
			bean.setUsername(rs.getString("username"));
			bean.setId(rs.getInt("id"));
			bean.setPassword(rs.getString("password"));
			bean.setStatus(rs.getString("status"));
	
		}

	} catch (Exception e) {
		e.printStackTrace();
		
			
		}
		finally {
			conn.close();
		}
		return bean;
		
	}
	
	public void insert(UserBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append("INSERT INTO user(username,fristname,lastname,address,telephone,password,gender,status) VALUES(?,?,?,?,?,?,?,?)" );
			prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1, bean.getUsername());
		prepared.setString(2, bean.getFristname());
		prepared.setString(3, bean.getLastname());
		prepared.setString(4, bean.getAddress());
		prepared.setString(5, bean.getTelephone());
		prepared.setString(6, bean.getPassword());
		prepared.setString(7, bean.getGender());
		prepared.setString(8, bean.getStatus());
		prepared.executeUpdate();

		} 
		catch (Exception e) {
			e.printStackTrace();
	}

		finally {
			conn.close();
		}
	}
	
	public void insert2(CustomerBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append("INSERT INTO customer(cu_idcard,cu_fname,cu_lastname,cu_address,cu_telephone,cu_gender,cu_member) VALUES(?,?,?,?,?,?,?)" );
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getCuIdcard());
			prepared.setString(2, bean.getCuFname());
			prepared.setString(3, bean.getCuLastname());
			prepared.setString(4, bean.getCuAddress());
			prepared.setString(5, bean.getCuTelephone());
			prepared.setString(6, bean.getCuGender());
			prepared.setInt(7, bean.getCuMember());

		prepared.executeUpdate();

		} 
		catch (Exception e) {
			e.printStackTrace();
	}

		finally {
			conn.close();
		}
	}
	
	public  CustomerBean ch(String i )throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null ;
		StringBuilder sql = new StringBuilder();
		Connection cc = con.openConnect();
		CustomerBean bean = new CustomerBean();

		try {
 
			sql.append( " SELECT * FROM customer WHERE  cu_idcard = ?" );
		
		prepared = cc.prepareStatement(sql.toString());
	
			prepared.setString(1, i);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setCuFname(rs.getString("cu_fname"));
				bean.setCuIdcard(rs.getString("cu_idcard"));
	
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
	}
		finally {
			cc.close();
		}return bean;
	}
	public  UserBean fileById(String id )throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null ;
		StringBuilder sql = new StringBuilder();
		Connection cc = con.openConnect();
		UserBean bean = new UserBean();

		try {
 
			sql.append( " SELECT * FROM user WHERE  username = ? " );
		
		prepared = cc.prepareStatement(sql.toString());
	
			prepared.setString(1, id);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setUsername(rs.getString("username"));
				bean.setFristname(rs.getString("fristname"));
				bean.setLastname(rs.getString("lastname"));
				bean.setGender(rs.getString("gender"));
				bean.setStatus(rs.getString("status"));
				bean.setAddress(rs.getString("address"));
				bean.setTelephone(rs.getString("telephone"));
				
			
	
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
	}
		finally {
			cc.close();
		}return bean;
	}

	
	public void add(UserBean bean) throws Exception{
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection cons = con.openConnect();
		try {
			sql.append("INSERT INTO detailrent(ID_Card)VALUES(?)" );
			prepared = cons.prepareStatement( sql.toString());
			prepared.setInt(1, bean.getId());
			prepared.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			cons.close();
		}
	}
	
	// check idcrad  new user
public UserBean CheckNewUser(String i) throws SQLException{
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
	UserBean bean = new UserBean();
		try {
		sql.append(" SELECT cu_idcard FROM customer WHERE  cu_idcard = ?  ");
		
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1,i);

		ResultSet rs = prepared.executeQuery();

		while (rs.next()) {
			
			bean.setUsername(rs.getString("cu_idcard"));
		
		}

	} catch (Exception e) {
		e.printStackTrace();
		
			
		}
		finally {
			conn.close();
		}
		return bean;
		
	}
	
	
	// end class
}