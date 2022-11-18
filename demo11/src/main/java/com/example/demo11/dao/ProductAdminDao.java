package com.example.demo11.dao;

import com.example.demo11.db.DBContext;
import com.example.demo11.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductAdminDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)
                        ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Product getProductByID(String id) {
        String query = "select * from product where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product( rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void editProduct(String id, String name,String price, String quantity, String img, String saleprice,String mota ,String idcategogy) {
        String query = "UPDATE product SET name = ?, price = ?, quantity = ?,img = ?,saleprice=?,mota=?,idcategogy=? WHERE id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, price);
            ps.setString(3, quantity);
            ps.setString(4, img);
            ps.setString(5, saleprice);
            ps.setString(6, mota);
            ps.setString(7, idcategogy);
            ps.setString(8, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    } public void dele(String id) {
        String query = "delete from product where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void insertPro(String id, String name,String price, String quantity, String img, String saleprice,String mota ,String idcategogy) {
        String query = "INSERT INTO product (id, name ,price,quantity,img,saleprice,mota,idcategogy) VALUES (?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, price);
            ps.setString(4, quantity);
            ps.setString(5, img);
            ps.setString(6, saleprice);
            ps.setString(7, mota);
            ps.setString(8, idcategogy);
//            ps.setString(9, img1);
//            ps.setString(10, img2);
//            ps.setString(11, img3);


            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        ProductAdminDao ProductAdminDao = new ProductAdminDao();
        System.out.println(ProductAdminDao.getProductByID("sp01").getPrice());
    }
}
