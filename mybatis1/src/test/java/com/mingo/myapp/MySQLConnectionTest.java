//package com.mingo.myapp;
//
//import java.sql.DriverManager;
//
//import org.junit.Test;
//
//import java.sql.Connection;
//
//public class MySQLConnectionTest {
//
//	private static final String DRIVER = "com.mysql.jdbc.Driver";
//	private static final String URL = "jdbc:mysql://54.180.189.169:3306/datamingo";
//	//jdbc:mysql:주소:포트/DB명
//	private static final String USER = "datamingo_remote";
//	private static final String PW = "4789ek51561c98125";
//	//Root 비밀번호
//	
//	@Test
//	public void testConnection() throws Exception{
//		Class.forName(DRIVER);
//		try(Connection con = DriverManager.getConnection(URL, USER, PW)){
//			System.out.println(con);
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//	
//}