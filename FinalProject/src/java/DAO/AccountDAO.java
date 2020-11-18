package DAO;


import DBconnect.ConnectDB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class AccountDAO {
    public static boolean checkLogin(String username, String password)
    {
        boolean isValid = false;
        try{
        Connection conn = new ConnectDB().getConnection();
        String sql = "select * from Account where username = ? and password = ?";
        PreparedStatement pre = conn.prepareStatement(sql);
        pre.setString(1, username);
        pre.setString(2, password);
        
        ResultSet rs = pre.executeQuery();
        if(rs.next())
        {
            isValid = true;
        }else{
            isValid = false;
        }
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return isValid;
    }
}
