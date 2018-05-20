/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Dnyaneshwar
 */
public class Connection {
     public java.sql.Connection conn;
    public PreparedStatement stmt;
    public ResultSet rs;
}
