package com.example.demo11.dao;

import com.example.demo11.db.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class updatestatus {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public void updateStatus( String status,String id) {
        String query = "UPDATE `order`SET status = ? WHERE id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, status);

            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
