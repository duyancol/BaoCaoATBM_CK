package com.example.demo11.dao;

import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.Product;
import com.example.demo11.model.danhmuc;

import java.util.List;
import java.util.stream.Collectors;

public class dmdao {
    private static dmdao instance;
    public static dmdao getInstance(){
        if(instance == null){
            instance = new dmdao();
        }
        return instance;
    }
    public List<danhmuc> getAll(){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from categoty").mapToBean(danhmuc.class).stream().collect(Collectors.toList());
        });
    }
//    private static dmdao instance;
//    public static dmdao getInstance(){
//        if(instance == null){
//            instance = new dmdao();
//        }
//        return instance;
//    }
//    public List<danhmuc> getAll(){
//        return   JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("select * from categoty ").mapToBean(danhmuc.class).stream().collect(Collectors.toList());
//        });
//    }

//    public Product getByID(String id){
//
//        return   JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("select * from product1 where id=?").bind(0,id).mapToBean(Product.class).first();
//        });
//    }
public static void main(String[] args) {
    dmdao dm = new dmdao();

    System.out.println(dm.getAll().get(0).getNamecategogy());
}
}
