/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * 
 * @author Dnyaneshwar
 */
public class DatabaseConnection extends Connection {

	private static java.sql.Connection conn;
	public PreparedStatement stmt;
	public ResultSet rs;

	private DatabaseConnection() throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/jobportalnew", "root", "root");
		if (conn != null) {
			System.out.println("Database connected");
		}
	}

	public java.sql.Connection dataConnection() throws Exception {

		return conn;
	}

	public static DatabaseConnection getInstance() throws Exception {
		DatabaseConnection db = new DatabaseConnection();

		return db;

	}

	/*
	 * public static void main(String args[]) throws Exception{
	 * DatabaseConnection n=new DatabaseConnection(); n.getClass();
	 * System.out.println("connected"+n); }
	 */
}
