package com.example.demo11.dao;

import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.Order;
import com.example.demo11.model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class TichLuyDao {
    private static TichLuyDao instance;
    public static TichLuyDao getInstance(){
        if(instance == null){
            instance = new TichLuyDao();
        }
        return instance;
    }
    public Order getByID(String id){

        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from `order` where id=?").bind(0,id).mapToBean(Order.class).first();
        });
    }
}
