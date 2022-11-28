package com.example.demo11.dao;

import com.example.demo11.db.DBContext;
import com.example.demo11.model.Product;
import com.example.demo11.model.User;
import com.example.demo11.dao.UserDao;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class userdaosendmail {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public User getUser(String userid,String email) {
        String query = "select * from user where username = ? and email=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, userid);
            ps.setString(2, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User( rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(6),
                        rs.getString(12)
                        );
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void rePss( String username,String repss) {
        String query = "UPDATE user SET repss = ? WHERE username = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, repss);

            ps.setString(2, username);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void doimk( String username,String doimk) {
        String query = "UPDATE user SET password = ? WHERE username = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, doimk);

            ps.setString(2, username);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public String hashPassword(String password){

        try {
            MessageDigest sha256= null;
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash =sha256.digest(password.getBytes());
            BigInteger number=new BigInteger(1,hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }

    }
    public static void main(String[] args) {
userdaosendmail userdaosendmail = new userdaosendmail();

System.out.println(userdaosendmail.getUser("58","duy766634@gmail.com").getPassword());
    }
}


