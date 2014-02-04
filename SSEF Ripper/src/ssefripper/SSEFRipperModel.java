/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//get info from control and update db


package ssefripper;

import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Acer
 */
public class SSEFRipperModel implements Model{
    
    Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/";
    String dbName = "ssefpdfdata";
    String driver = "com.mysql.jdbc.Driver";
    String userName = "root";
    String password = ""; //rmb to change
    Statement stmt = null;
    
    public SSEFRipperModel(){
    }
    
    
    private String format(ArrayList<String> sList){
        //format in correct order
        String sql="INSERT INTO "+sList.get(0)+" VALUES (" +sList.get(1);
        for(int i=2;i<sList.size();i++){
            sql+=", "+sList.get(i);
        }
        sql+=");";
        System.out.println(sql);
        return sql;
    }

    public void update(ArrayList<String> sList) {
        
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url+dbName,userName,password);
            System.out.println("Connected to the database");
            String sql = format(sList);
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            conn.close();
            System.out.println("Disconnected from database");
        } catch (Exception ex) {
            Logger.getLogger(SSEFRipperModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
