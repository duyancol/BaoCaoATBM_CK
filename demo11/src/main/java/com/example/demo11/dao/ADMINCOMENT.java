package com.example.demo11.dao;

import com.example.demo11.model.Comment;
import com.example.demo11.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ADMINCOMENT {
    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;

    public ADMINCOMENT(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;

    }

    public ADMINCOMENT() {
    }
    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(
                    jdbcURL, jdbcUsername, jdbcPassword);
        }
    }

    protected void disconnect() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }
    public List<Comment> listAllDM() throws SQLException {
        List<Comment> listcm = new ArrayList<>();

        String sql = "SELECT *FROM commment INNER JOIN product ON  commment.id = product.id";

        connect();

        Statement statement = jdbcConnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {

            String id = resultSet.getString("id");
            String name= resultSet.getString("name");
            int price = resultSet.getInt("price");
            int quantity = resultSet.getInt("quantity");
            String img = resultSet.getString("img");
            int saleprice = resultSet.getInt("saleprice");
            String mota = resultSet.getString("mota");
            String idcategogy= resultSet.getString("idcategogy");
            String img1 = resultSet.getString("img1");
            String img2 = resultSet.getString("img2");
            String img3 = resultSet.getString("img3");
            Product dmsp = new Product(id, name,price,quantity,img,saleprice,mota,idcategogy,img1,img2,img3);
            Comment com = new Comment(resultSet.getString("commentid")
            ,resultSet.getString("content")
            ,resultSet.getString("id"),resultSet.getString("username"),dmsp);
            listcm.add(com);
        }

        resultSet.close();
        statement.close();

        disconnect();

        return listcm;
    }

    public static void main(String[] args) throws SQLException {
        ADMINCOMENT admincoment = new ADMINCOMENT();
        System.out.println(admincoment.listAllDM().size());
    }


}
