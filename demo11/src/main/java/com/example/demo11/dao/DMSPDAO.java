package com.example.demo11.dao;


import com.example.demo11.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DMSPDAO {
    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;

    public DMSPDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }

    public DMSPDAO() {
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

    public boolean insertDM(Product pd) throws SQLException {
        String sql = "INSERT INTO product (id, name ,price,quantity,img,saleprice,mota,idcategogy,img1,img2,img3) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1,pd.getId());
        statement.setString(2, pd.getName());
        statement.setInt(3, pd.getPrice());
        statement.setInt(4, pd.getQuantity());
        statement.setString(5, pd.getImg());
        statement.setInt(6, pd.getSaleprice());
        statement.setString(7, pd.getMota());
        statement.setString(8, pd.getIdcategogy());
        statement.setString(9, pd.getImg1());
        statement.setString(10, pd.getImg2());
        statement.setString(11, pd.getImg3());
        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowInserted;
    }

    public List<Product> listAllDM() throws SQLException {
        List<Product> listPD = new ArrayList<>();

        String sql = "SELECT * FROM  product";

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
            listPD.add(dmsp);
        }

        resultSet.close();
        statement.close();

        disconnect();

        return listPD;
    }

    public boolean deleteDM(Product pd) throws SQLException {
        String sql = "DELETE FROM product where id = ?";

        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, pd.getId());

        boolean rowDeleted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowDeleted;
    }

    public boolean get(Product pd) throws SQLException {
        String sql = "select * FROM product  where id = ?";
        sql += " WHERE id = ?";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
//        statement.setString(1,dmsp.getId());
        statement.setString(1, pd.getName());
        statement.setDouble(2, pd.getPrice());
        statement.setInt(3, pd.getQuantity());
        statement.setString(4, pd.getImg());
        statement.setDouble(5, pd.getSaleprice());
        statement.setString(6, pd.getMota());
        statement.setString(7, pd.getIdcategogy());
        statement.setString(8, pd.getImg1());
        statement.setString(9, pd.getImg2());
        statement.setString(10, pd.getImg3());
        statement.setString(11, pd.getId());

        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowUpdated;
    }
    public boolean updateDM(Product pd) throws SQLException {
        String sql = "UPDATE product SET name = ?, price = ?, quantity = ?,img = ?,saleprice=?,mota=?,idcategogy=?,img1=?,img2=?,img3=? ";
        sql += " WHERE id = ?";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, pd.getName());
        statement.setInt(2, pd.getPrice());
        statement.setInt(3,pd.getQuantity());
        statement.setString(4, pd.getImg());
        statement.setInt(5, pd.getSaleprice());
        statement.setString(6, pd.getMota());
        statement.setString(7, pd.getIdcategogy());
        statement.setString(8, pd.getImg1());
        statement.setString(9, pd.getImg2());
        statement.setString(10, pd.getImg3());
        statement.setString(11, pd.getId());

        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowUpdated;
    }

    public Product getDM(String id) throws SQLException {
        Product pd = null;
        String sql = "SELECT * FROM product  WHERE id = ?";

        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, id);

        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            String name= resultSet.getString("name");
            int price = resultSet.getInt("price");
            int quantity = resultSet.getInt("quantity");
            String img = resultSet.getString("img");
           int saleprice = resultSet.getInt("saleprice");
            String mota = resultSet.getString("mota");
            String idcategogy= resultSet.getString("idcategogy");
            String img1 = resultSet.getString("img1");
            String img2= resultSet.getString("img2");
            String img3 = resultSet.getString("img3");
            pd = new Product(id, name, price, quantity,img,saleprice,mota,idcategogy,img1,img2,img3);
        }

        resultSet.close();
        statement.close();

        return pd;
    }

}
