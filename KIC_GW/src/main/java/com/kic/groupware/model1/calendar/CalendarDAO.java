package com.kic.groupware.model1.calendar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CalendarDAO {
	private Connection conn = null;
	
	public CalendarDAO() {
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
	
	
}
