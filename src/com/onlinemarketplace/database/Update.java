package com.onlinemarketplace.database;

import java.sql.Connection;
import java.sql.Statement;

public class Update {

	public static int execute(String query) {
	
		int rows = 0;
		
		try {
			Connection conn = Database.connect();
			Statement statement = conn.createStatement();
			rows = statement.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rows;
	}

}
