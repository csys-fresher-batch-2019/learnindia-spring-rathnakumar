package com.educator.learnfast.util;
import java.sql.DriverManager;
import java.sql.Connection;



public class TestConnection{
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@13.235.147.120:1521:XE","rathna","rathna");
		System.out.println(connection);
		return connection;
	}

}
