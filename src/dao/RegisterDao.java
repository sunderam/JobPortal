/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pojo.Register;

/**
 * 
 * @author Dnyaneshwar
 */
public class RegisterDao extends dao.Connection {

	public RegisterDao() throws Exception {

		conn = dao.DatabaseConnection.getInstance().dataConnection();
		if (conn != null) {
			System.out.println("Connection success in ElectricityDao");
		} else {
			System.out.println("Connetion Failed in ElectricityDao");
		}
	}

	public boolean addReg(pojo.Register rp) throws Exception {

		stmt = conn.prepareStatement(
				"insert into register values(0,?,?,?,?,?,?)",
				PreparedStatement.RETURN_GENERATED_KEYS);
		stmt.setString(1, rp.getName());
		stmt.setString(2, rp.getEmail());
		stmt.setString(3, rp.getContact());
		stmt.setString(4, rp.getDegree());
		stmt.setString(5, rp.getPassing());
		stmt.setString(6, rp.getPassword());
		int value = stmt.executeUpdate();
		rs = stmt.getGeneratedKeys();
		if (rs.next()) {
			int id = rs.getInt(1);
			System.out.println("id :" + id);
			stmt = conn
					.prepareStatement("insert into personalDetails(regid)values(?)");
			stmt.setInt(1, id);
			int a = stmt.executeUpdate();
			if (a > 0) {
				stmt = conn
						.prepareStatement("insert into educationDetails(regid)value(?)");
				stmt.setInt(1, id);
				int b = stmt.executeUpdate();
				if (b > 0) {
					stmt = conn
							.prepareStatement("insert into professionalDetails(regid)value(?)");
					stmt.setInt(1, id);
					int c = stmt.executeUpdate();
					if (c > 0)
						return true;
				}
			}
		}
		return false;
	}

	public Register getUserByUsername(String username) throws SQLException {
		stmt = conn
				.prepareStatement("select name,email,contact,degree,passing from register where email = ?");
		stmt.setString(1, username);
		rs = stmt.executeQuery();
		while (rs.next()) {
			Register reg = new Register();
			reg.setName(rs.getString("name"));
			reg.setEmail(rs.getString("email"));
			reg.setContact(rs.getString("contact"));
			reg.setDegree(rs.getString("degree"));
			reg.setPassing(rs.getString("passing"));
			return reg;
		}
		return null;
	}

}
