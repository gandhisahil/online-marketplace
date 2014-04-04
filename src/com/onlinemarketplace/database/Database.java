package com.onlinemarketplace.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {

	public static Connection connect(){
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection("jdbc:mysql://localhost/OnlineMarketplace", "root", "sahilgandhi");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
