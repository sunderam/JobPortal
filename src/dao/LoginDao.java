/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;

//import java.util.*;

import java.util.ArrayList;

/**
 *
 * @author Dnyaneshwar
 */
public class LoginDao extends Connection{
    
     ArrayList al;
    public LoginDao() throws Exception{
        
       conn=dao.DatabaseConnection.getInstance().dataConnection();
       
        if (conn!= null) {
            System.out.println("Connection success in LoginDao");
        } else {
            System.out.println("Connetion Failed in LoginDao");
        }
    }
    
    
     public ArrayList isValidate(String u, String p) throws Exception {
         System.out.println("in isValidate Method");
          al = new ArrayList();
        stmt = conn.prepareStatement("select * from register where email=? and password=?");
        System.out.println("setting parameter");
        stmt.setString(1, u);
        stmt.setString(2, p);
        
        
        rs = stmt.executeQuery();
        System.out.println("Query Executed");
        if (rs.next()) {
            System.out.println("fethicng data from database");
            
            al.add(rs.getInt(1));
            al.add(rs.getString(2));
            al.add(rs.getString(3));
           // al.add(rs.getInt(4));

                      }
        
        System.out.println("Returning al");
        return al;

    }

    
}
