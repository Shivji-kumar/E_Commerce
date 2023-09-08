package com.cart.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	private static Connection connection=null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(connection==null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection= DriverManager.getConnection("jdbc:mysql://containers-us-west-148.railway.app:6001/railway","root","MpM5e3lBdIzU80rRLySE");
			System.out.println("Connected");
		}
		return connection;
	}

}
