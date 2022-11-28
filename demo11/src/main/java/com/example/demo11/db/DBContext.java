package com.example.demo11.db;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    private String url;
    public Connection getConnection()throws Exception {

        if(instance == null || instance.trim().isEmpty())
           url = "jdbc:mysql://localhost:3306/shopweb";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, userID, password);
    }
    /*Insert your other code right after this comment*/
    /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/

    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final String userID = "root";
    private final String password = "";

}
