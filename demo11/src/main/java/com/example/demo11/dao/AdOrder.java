package com.example.demo11.dao;

import com.example.demo11.db.DBContext;
import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class AdOrder {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;





    public List<Order> getAllOrder() {
        List<Order> list = new ArrayList<>();
        String query = "select * from `order`";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User(rs.getString(2),rs.getString(5));
                list.add(new Order(rs.getInt(1),
                        user,
                        rs.getInt(6),
                        rs.getString(4),
                        rs.getInt(3),
                        rs.getDate(7),
                        rs.getDate(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Order> getAllOrdertheongy(String d) {
        List<Order> list = new ArrayList<>();
        String query = "select * from `order` where created_at like ? ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+d+"%");
            rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User(rs.getString(2),rs.getString(5));
                list.add(new Order(rs.getInt(1),
                        user,
                        rs.getInt(6),
                        rs.getString(4),
                        rs.getInt(3),
                        rs.getDate(7),
                        rs.getDate(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Order> getAllOrderByName(User user) {

        List<Order> list = new ArrayList<>();
            String query = "  SELECT * FROM `order` WHERE user_id =?";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,user.getName());
            rs = ps.executeQuery();

            while (rs.next()) {
                 user = new User(rs.getString(2), rs.getString(5));
                list.add(new Order(rs.getInt(1),
                        user,
                        rs.getInt(6),
                        rs.getString(4),
                        rs.getInt(3),
                        rs.getDate(7),
                        rs.getDate(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public void updatestatus(int status,String id) {
        String query = "update `order` set status = ? where id = ? ";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, status);
            ps.setString(2, id);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }


    public List<Comment> getAllcomment() {

        List<Comment> list = new ArrayList<>();
        String query = " SELECT *FROM commment INNER JOIN product ON  commment.id = product.id";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);

            rs = ps.executeQuery();

            while (rs.next()) {

              Product product= new  Product(
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
                );
                list.add(new Comment(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        product
                       ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Order> getAllOrdertheongy12(String d) {
        List<Order> list = new ArrayList<>();
        String query = "SELECT *,COUNT(product_id) AS total_tongsp FROM  `order` INNER JOIN order_detail ON  order_detail.order_id = `order`.id where create_at like ? GROUP BY product_id";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);

                ps.setString(1,"%"+d+"%");


            rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User(rs.getString(2),rs.getString(5));
                list.add(new Order(rs.getInt(1),
                        user,
                        rs.getInt(6),
                        rs.getString(4),
                        rs.getInt(3),
                        rs.getDate(7),
                        rs.getDate(8),
                        rs.getInt(18),
                        rs.getString(12),
                        rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Order> getAllOrdertheomonth(String d) {

        List<Order> list = new ArrayList<>();
        String query = "SELECT *,COUNT(product_id) AS total_tongsp FROM  `order` INNER JOIN order_detail ON  order_detail.order_id = `order`.id where create_at like ? GROUP BY product_id";
        String month = d.substring(0,d.indexOf("-"));
        String year=d.substring(d.indexOf("-")+1, d.length());
        try {

            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
//            if(month.equals("June")){
                ps.setString(1,"%"+d+"%");
                System.out.println("%"+year+"-"+"06"+"%");
//            }

            rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User(rs.getString(2),rs.getString(5));
                list.add(new Order(rs.getInt(1),
                        user,
                        rs.getInt(6),
                        rs.getString(4),
                        rs.getInt(3),
                        rs.getDate(7),
                        rs.getDate(8),
                        rs.getInt(18),
                        rs.getString(12),
                        rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Order> getAllOrdertheoyear(String d) {

        List<Order> list = new ArrayList<>();
        String query = "SELECT *,COUNT(product_id) AS total_tongsp FROM  `order` INNER JOIN order_detail ON  order_detail.order_id = `order`.id where create_at like ? GROUP BY product_id";
        String month = d.substring(0,d.indexOf("-"));
        String year=d.substring(d.indexOf("-")+1, d.length());
        try {

            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
//            if(month.equals("June")){
            ps.setString(1,"%"+d+"%");
            System.out.println("%"+year+"-"+"06"+"%");
//            }

            rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User(rs.getString(2),rs.getString(5));
                list.add(new Order(rs.getInt(1),
                        user,
                        rs.getInt(6),
                        rs.getString(4),
                        rs.getInt(3),
                        rs.getDate(7),
                        rs.getDate(8),
                        rs.getInt(18),
                        rs.getString(12),
                        rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
    AdOrder dao = new AdOrder();




        System.out.println(dao.getAllOrdertheongy12("2022-06-20").size());
    }

}
