package com.kic.groupware.model1.auth;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

public class AuthDAO {
	private Connection conn = null;
	
	public AuthDAO() {
		String url = "jdbc:mysql://localhost:3306/groupware";
		String user = "group";
		String password = "123456";
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int busitripin(AuthTO to) {
		int flag = 1;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into auth_businesstrip ( authno, bno, binsertdate, deptno, ename, bspot, bpurpose, authstate ) values ( ?, ?, now(), ? ,? ,?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, to.getAuthno());
			pstmt.setString(2, to.getBno());
			pstmt.setString(3, to.getDeptno());
			pstmt.setString(4, to.getEname());
			pstmt.setString(5, to.getBspot());
			pstmt.setString(6, to.getBpurpose());
			pstmt.setString(7, to.getAuthstate());
			
			int result = pstmt.executeUpdate();
			if( result == 1 ) {
				flag = 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch(SQLException e) {};
			if( conn != null ) try { conn.close(); } catch(SQLException e) {};
		}
		
		
		return flag;
	}
	
	public int vacationin(AuthvacationTO to) {
		int flag = 1;
		
		PreparedStatement pstmt = null;
		
		try {
			//String sql = "insert into auth_vacation ( vno, authno, ename, deptno, vdate, pno, vtype, vtime, vreason ) values ( ?, ?, ?, ?, now(), ?, ?, ?, ?)";
			String sql = "insert into test values ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, to.getAuthno());
			/*pstmt.setString(1, "1");
			pstmt.setString(2, to.getAuthno());
			pstmt.setString(3, to.getEname());
			pstmt.setString(4, to.getDeptno());
			pstmt.setString(5, to.getPno());
			pstmt.setString(6, to.getVtype());
			pstmt.setString(7, to.getVtime());
			pstmt.setString(8, to.getVreason());
			*/
			int result = pstmt.executeUpdate();
			if( result == 1 ) {
				flag = 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch(SQLException e) {};
			if( conn != null ) try { conn.close(); } catch(SQLException e) {};
		}
		
		
		return flag;
	}
	/*
	public int checkout( String checkout ) {
		int flag = 1;
		
		PreparedStatement pstmt = null;
		
		try {
			
			String sql = "update management set checkout = ? where eno = ? and mdate = date_format( now(), '%Y-%m-%d')";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString( 1, checkout );
			pstmt.setString( 2, "1" );
			
			int result = pstmt.executeUpdate();
			if( result == 1 ) {
				flag = 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch(SQLException e) {};
			if( conn != null ) try { conn.close(); } catch(SQLException e) {};
		}
		
		
		return flag;
	}
	
	public AuthTO checkinout( String eno ) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		AuthTO to = new AuthTO();
		
		try {
			String sql = "select checkin, checkout from management where eno = ? and mdate = date_format( now(), '%Y-%m-%d')";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "1");
			
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				String checkin = rs.getString("checkin");
				String checkout = rs.getString("checkout");
				
				to.setCheckin(checkin);
				to.setCheckout(checkout);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch(SQLException e) {};
			if( conn != null ) try { conn.close(); } catch(SQLException e) {};
		}
		
		
		return to;
	}
	
	public ArrayList<AuthTO> managelist( String eno ) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<AuthTO> manageLists = new ArrayList<AuthTO>();
		
		try {
			String sql = "select mdate, checkin, checkout from management where eno = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "1");
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				AuthTO to = new AuthTO();
				
				String mdate = rs.getString("mdate");
				String checkin = rs.getString("checkin");
				String checkout = rs.getString("checkout");
				
				to.setM_date(mdate);
				to.setCheckin(checkin);
				to.setCheckout(checkout);
				
				manageLists.add(to);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if( pstmt != null ) try { pstmt.close(); } catch(SQLException e) {};
			if( conn != null ) try { conn.close(); } catch(SQLException e) {};
		}
		
		return manageLists;
	}
	*/
}
