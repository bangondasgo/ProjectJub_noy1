package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.ContainerBean;
import com.bru.model.DetailrentBean;

import com.bru.util.ConnectDB;



@Repository
public class RentDao {
	
	public void insert(DetailrentBean bean) throws SQLException{
		ConnectDB re = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection rent = re.openConnect();
		
		try {sql.append("INSERT INTO detailrent(CB001,CC001,CC002,CD001,ID_Card,Number,dateday,datemont,dateyear,alloder,status)VALUES(?,?,?,?,?,?,?,?,?,?,'1')");
		prepared = rent.prepareStatement(sql.toString());
		prepared.setInt(1, bean.getCB001());
		prepared.setInt(2, bean.getCC001());
		prepared.setInt(3, bean.getCC002());
		prepared.setInt(4, bean.getCD001());
		prepared.setString(5, bean.getIdcard());
		prepared.setInt(6, bean.getNumber());
		prepared.setInt(7, bean.getDatedateday());
		prepared.setInt(8, bean.getDatedatemont());
		prepared.setInt(9, bean.getDatedateyear());
		prepared.setInt(10, bean.getAll());
		
		prepared.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
	}

		finally {
			rent.close();
		}
		
	}
	public List<DetailrentBean> Trens () throws SQLException{
		List<DetailrentBean>  list = new ArrayList<>();
		DetailrentBean bean  = new DetailrentBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		String Mo[] = { "มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม",
				"กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม" };

		try {
			sql.append(" SELECT * FROM  detailrent  ");
			prepared = conn.prepareStatement(sql.toString());
	

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DetailrentBean();
				bean.setId(rs.getInt("ID"));
				bean.setIdcard(rs.getString("ID_Card"));
				bean.setCB001(rs.getInt("CB001"));
				bean.setCC001(rs.getInt("CC001"));
				bean.setCC002(rs.getInt("CC002"));
				bean.setCD001(rs.getInt("CD001"));
				bean.setNumber(rs.getInt("Number"));
				bean.setDatedateday(rs.getInt("dateday"));
				bean.setDatedatemont(rs.getInt("datemont"));
				bean.setSimpleyear(Mo[bean.getDatedatemont()]);
				bean.setDatedateyear(rs.getInt("dateyear"));
				bean.setAll(rs.getInt("alloder"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	// update
	   public void  update(int a ,String b) throws SQLException{
		   ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			Connection conn = con.openConnect();
		   
			try {
				sql.append("UPDATE container SET Number = ?  WHERE C_ID = ? ");
				prepared = conn.prepareStatement(sql.toString());
				prepared.setInt(1, a);
				prepared.setString(2, b);
			
				prepared.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
			}
			finally {
				conn.close();
			}
	   }
	// SELECT
		public DetailrentBean xx(int a) throws SQLException{
			
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			Connection conn = con.openConnect();
			DetailrentBean bean = new DetailrentBean();
			try {
			sql.append(" SELECT * FROM detailrent WHERE  ID = ? ");
			
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1,a);

			ResultSet rs = prepared.executeQuery();
			String Mo[] = { "มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม",
					"กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม" };
			while (rs.next()) {
				bean.setId(rs.getInt("ID"));
				bean.setIdcard(rs.getString("ID_Card"));
				bean.setCB001(rs.getInt("CB001"));
				bean.setCC001(rs.getInt("CC001"));
				bean.setCC002(rs.getInt("CC002"));
				bean.setCD001(rs.getInt("CD001"));
				bean.setNumber(rs.getInt("Number"));
				bean.setDatedateday(rs.getInt("dateday"));
				bean.setDatedatemont(rs.getInt("datemont"));
				bean.setSimpleyear(Mo[bean.getDatedatemont()]);
				bean.setDatedateyear(rs.getInt("dateyear"));
				bean.setAll(rs.getInt("alloder"));
			
		
			}

		} catch (Exception e) {
			e.printStackTrace();
			
				
			}
			finally {
				conn.close();
			}
			return bean;
			
		}
		// sec all manu2 where day 
		public List<DetailrentBean> retest (int a, int b, int c) throws SQLException{
			List<DetailrentBean>  list = new ArrayList<>();
			DetailrentBean bean  = new DetailrentBean();
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			Connection conn = con.openConnect();
			String Mo[] = { "มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม",
					"กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม" };

			try {
				sql.append(" SELECT * FROM  detailrent  ");
				prepared = conn.prepareStatement(sql.toString());
		

				ResultSet rs = prepared.executeQuery();
				while (rs.next()) {
					
					bean = new DetailrentBean();
					bean.setDatedateday(rs.getInt("dateday"));
					bean.setDatedatemont(rs.getInt("datemont"));
					bean.setDatedateyear(rs.getInt("dateyear"));
					bean.setStatus(rs.getString("status"));
					if(bean.getDatedateday() == a && bean.getDatedatemont() == b && bean.getDatedateyear() == c && bean.getStatus().equals("1") ) {
						bean.setId(rs.getInt("ID"));
						bean.setIdcard(rs.getString("ID_Card"));
						bean.setCB001(rs.getInt("CB001"));
						bean.setCC001(rs.getInt("CC001"));
						bean.setCC002(rs.getInt("CC002"));
						bean.setCD001(rs.getInt("CD001"));
						bean.setNumber(rs.getInt("Number"));
						bean.setDatedateday(rs.getInt("dateday"));
						bean.setDatedatemont(rs.getInt("datemont"));
						bean.setSimpleyear(Mo[bean.getDatedatemont()]);
						bean.setDatedateyear(rs.getInt("dateyear"));
						bean.setAll(rs.getInt("alloder"));
						list.add(bean);
					}
			
				}

		}
			catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				conn.close();
			}
			
			return list  ; 
		}
		
		// sec all manu2 where day agen 
		public List<DetailrentBean> retested (int a, int b, int c) throws SQLException{
			List<DetailrentBean>  list = new ArrayList<>();
			DetailrentBean bean  = new DetailrentBean();
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			Connection conn = con.openConnect();
			String Mo[] = { "มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม",
					"กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม" };

			try {
				sql.append(" SELECT * FROM  detailrent  ");
				prepared = conn.prepareStatement(sql.toString());
		

				ResultSet rs = prepared.executeQuery();
				while (rs.next()) {
					
					bean = new DetailrentBean();
					bean.setStatus(rs.getString("status"));
					if( bean.getStatus().equals("1") ) {
						bean.setId(rs.getInt("ID"));
						bean.setIdcard(rs.getString("ID_Card"));
						bean.setCB001(rs.getInt("CB001"));
						bean.setCC001(rs.getInt("CC001"));
						bean.setCC002(rs.getInt("CC002"));
						bean.setCD001(rs.getInt("CD001"));
						bean.setNumber(rs.getInt("Number"));
						bean.setDatedateday(rs.getInt("dateday"));
						bean.setDatedatemont(rs.getInt("datemont"));
						bean.setSimpleyear(Mo[bean.getDatedatemont()]);
						bean.setDatedateyear(rs.getInt("dateyear"));
						bean.setAll(rs.getInt("alloder"));
						list.add(bean);
					}
			
				}

		}
			catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				conn.close();
			}
			
			return list  ; 
		}
		
		// update manu2 เบิก
		// update
		   public void  update2(int a ) throws SQLException{
			   ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				Connection conn = con.openConnect();
			   
				try {
					sql.append("UPDATE detailrent SET status = ?  WHERE ID = ? ");
					prepared = conn.prepareStatement(sql.toString());
					prepared.setString(1, "2");
					prepared.setInt(2, a);
				
					prepared.executeUpdate();
				} catch (Exception e) {
					// TODO: handle exception
				}
				finally {
					conn.close();
				}
		   }
		   // sec all manu2
		   public List<DetailrentBean> Trens23 () throws SQLException{
				List<DetailrentBean>  list = new ArrayList<>();
				DetailrentBean bean  = new DetailrentBean();
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				Connection conn = con.openConnect();
				String Mo[] = { "มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม",
						"กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม" };

				try {
					sql.append(" SELECT * FROM  detailrent  ");
					prepared = conn.prepareStatement(sql.toString());
			

					ResultSet rs = prepared.executeQuery();
					while (rs.next()) {
						bean = new DetailrentBean();
						bean.setStatus(rs.getString("status"));
						if(bean.getStatus().equals("2")) {
							bean.setId(rs.getInt("ID"));
							bean.setIdcard(rs.getString("ID_Card"));
							bean.setCB001(rs.getInt("CB001"));
							bean.setCC001(rs.getInt("CC001"));
							bean.setCC002(rs.getInt("CC002"));
							bean.setCD001(rs.getInt("CD001"));
							bean.setNumber(rs.getInt("Number"));
							bean.setDatedateday(rs.getInt("dateday"));
							bean.setDatedatemont(rs.getInt("datemont"));
							bean.setSimpleyear(Mo[bean.getDatedatemont()]);
							bean.setDatedateyear(rs.getInt("dateyear"));
							bean.setAll(rs.getInt("alloder"));
							list.add(bean);
						}
					
					}

			}
				catch (Exception e) {
					e.printStackTrace();
				}
				finally {
					conn.close();
				}
				
				return list  ; 
			}
		   
		   
		   public List<ContainerBean> vvvv4 () throws SQLException{
				List<ContainerBean>  list = new ArrayList<>();
				ContainerBean bean  = new ContainerBean();
				ConnectDB con = new ConnectDB();
				PreparedStatement prepared = null;
				StringBuilder sql = new StringBuilder();
				Connection conn = con.openConnect();
				

				try {
					sql.append(" SELECT Number FROM  container   ");
					prepared = conn.prepareStatement(sql.toString());
			

					ResultSet rs = prepared.executeQuery();
					while (rs.next()) {
						bean = new ContainerBean();
						bean.setNumber(rs.getInt("Number"));
						list.add(bean);
					}

			}
				catch (Exception e) {
					e.printStackTrace();
				}
				finally {
					conn.close();
				}
				
				return list  ; 
			}
// end class
}

