package com.example.demo11.dao;

import com.example.demo11.db.DBContext;
import com.example.demo11.model.Comment;
import com.example.demo11.model.Order;
import com.example.demo11.model.Product;
import com.example.demo11.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class admincmdao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Comment> getAllOrder() {
        List<Comment> list = new ArrayList<>();
        String query = "SELECT *FROM commment INNER JOIN product ON  commment.id = product.id";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product(rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8),rs.getString(9),rs.getInt(10),rs.getString(11),rs.getString(12), rs.getString(13),rs.getString(14) , rs.getString(15));
                list.add(new Comment(rs.getString(1),

                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                       product));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        admincmdao dao = new admincmdao();
        System.out.println(dao.getAllOrder().size());
    }
}
