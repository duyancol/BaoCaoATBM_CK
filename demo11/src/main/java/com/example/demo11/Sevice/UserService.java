package com.example.demo11.Sevice;

import com.example.demo11.dao.UserDao;
import com.example.demo11.model.User;

import java.util.HashMap;
import java.util.Map;

public class UserService {
    private static UserService instance;


    private UserService() {

    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    public User checkLogin(String username, String password) {
//        if (users.containsKey(username) && users.get(username).equals(password)) {
//            return true;
//        }
//        return false;
       return UserDao.getInstance().checkLogin(username,password);
    }

    public boolean register(String username, String password, String email, String phone) {
//        if(!password.equals(confin)) return false;
        return UserDao.getInstance().register(username,password,email,phone);
    }
    public User checkUserLogin(String username) {
//        if (users.containsKey(username) && users.get(username).equals(password)) {
//            return true;
//        }
//        return false;
        return UserDao.getInstance().checkUserLogin(username);
    }
}
