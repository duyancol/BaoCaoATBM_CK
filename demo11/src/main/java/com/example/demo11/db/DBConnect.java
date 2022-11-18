package com.example.demo11.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

public class DBConnect {
    private static DBConnect instance;
    private Connection connection;
    private static String db="jdbc:mysql://localhost:3306/shopweb";
    private static String user="root";
    private static String pass="";
    private DBConnect(){

    }
    public static DBConnect getInstance(){
        if(instance==null){
            instance = new DBConnect();
        }
        return instance;
    }
    private void connect() throws SQLException,ClassNotFoundException{
        if(connection==null||connection.isClosed()){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection(db,user,pass);
        }
    }
    public Statement get(){
        try {
           connect();
            return connection.createStatement();
        }catch (SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return null;
    }
}
