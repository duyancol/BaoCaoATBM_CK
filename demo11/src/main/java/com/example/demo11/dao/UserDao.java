package com.example.demo11.dao;

import com.example.demo11.db.DBConnect;
import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.Product;
import com.example.demo11.model.User;
import org.jdbi.v3.core.Jdbi;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
import java.util.List;
import java.util.stream.Collectors;

public class UserDao {
    private static UserDao instance;
    private UserDao(){

    }
    public static UserDao getInstance() {
        if (instance == null) {
            instance = new UserDao();
        }
        return instance;
    }
    public User checkLogin(String username,String  password){
//          Statement statement= DBConnect.getInstance().get();
//    if(statement==null) return false;
//    String sql ="SELECT * FROM test2 WHERE username ='"+ username +"'AND password ='"+ password +"'";
 List<User> users= JDBIConnector.get().withHandle(h->
            h.createQuery("SELECT * FROM user WHERE username =? ").bind(0,username)
                    .mapToBean(User.class).stream().collect(Collectors.toList())
        );
 if(users.size()!=1) return null;
 User user =users.get(0);
 if(!user.getPassword().equals(hashPassword(password))||!user.getUsername().equals(username)) return null;
 return user;


//        try {
//            ResultSet rs =statement.executeQuery(sql);
//            User user = null;
//            if(rs.next()){
//                user=new User();
//
//
//
//
//                user.setFullname(rs.getString("name"));
//                user.setUsername(rs.getString("username"));
//
//            }
//            if(user==null|| !user.getUsername().equals(username)||rs.next()){
//                  return false;
//            }
//            return true;
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return false;
//        }

    }
    public User checkUserLogin(String username){
//          Statement statement= DBConnect.getInstance().get();
//    if(statement==null) return false;
//    String sql ="SELECT * FROM test2 WHERE username ='"+ username +"'AND password ='"+ password +"'";
        List<User> users= JDBIConnector.get().withHandle(h->
                h.createQuery("SELECT * FROM user WHERE username =? ").bind(0,username)
                        .mapToBean(User.class).stream().collect(Collectors.toList())
        );
        if(users.size()!=1) return null;
        User user =users.get(0);
        if(!user.getUsername().equals(username)) return null;
        return user;




    }

    public boolean register(String username, String password, String email, String phone) {
       int i= JDBIConnector.get().withHandle(h->
                h.createUpdate("INSERT INTO user(username,password,email,phone,role,hide) VALUES (?,?,?,?,0,0)")
                        .bind(0,username)
                        .bind(1,hashPassword(password))
                        .bind(2,email)
                        .bind(3,phone)
                        .execute()

        );

       return i==1;
//        Statement statement= DBConnect.getInstance().get();
//        if(statement==null) return false;
//        String sql ="INSERT INTO test4(username,password) VALUES ('"+username+"','"+password+"')";
//        try {
//            int i=statement.executeUpdate(sql);
//            return i==1;
//
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return false;
//        }

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
    public List<User> getAllTpUser(){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM `user` where role =0 ORDER BY hide DESC  ").mapToBean(User.class).stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
        int code = (int) Math.floor(((Math.random() * 899999) + 100000));
        UserDao userDao = new UserDao();
        System.out.println(userDao.hashPassword("12345678"));
    }
}
