package com.semi.common;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	
	//Connection 파일 경로 등록
	public static Connection getConnection() {
		
		Properties prop = new Properties();
		
		String filePath = JDBCTemplate.class.getResource("/sql/driver/driver.properties").getPath();
		
		Connection conn = null;

		try {
			prop.load(new FileInputStream(filePath));
			
			Class.forName(prop.getProperty("driver"));
			
			conn = DriverManager.getConnection(prop.getProperty("url")
												,prop.getProperty("username")
												,prop.getProperty("password"));
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	//commit
	public static void commit(Connection conn) {
		
		try {
			if(conn!=null && !conn.isClosed()) {
				conn.commit();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//rollback
	public static void rollback(Connection conn) {
		
		try {
			if(conn!=null && !conn.isClosed()) {
				conn.rollback();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//반납
	public static void close(Connection conn) {
		
		try {
			if(conn!=null && !conn.isClosed()) {
				conn.isClosed();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		
		try {
			if(stmt!=null && !stmt.isClosed()) {
				stmt.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		
		try {
			if(rset!=null && !rset.isClosed()) {
				rset.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}