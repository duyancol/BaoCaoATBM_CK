package com.example.demo11.dao;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.Product;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDao {
    private static ProductDao instance;
    public static ProductDao getInstance(){
        if(instance == null){
            instance = new ProductDao();
        }
        return instance;
    }
    public List<Product> getAll(){
      return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product").mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public List<Product> getNameTrademark(String name){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where trademark=?").bind(0,name).mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public List<Product> get8Product(){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product LIMIT 4").mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public List<Product> get8nextProduct(int amont){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM product LIMIT 4 OFFSET ? ").bind(0,amont).mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }

    public List<Product> searchProduct(String texxt){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where name like ?").bind(0,"%"+texxt+"%").mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }

    public List<Product> count(String texxt){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where id like ?").bind(0,"%"+texxt+"%").mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public List<Product> search(String texxt,int index,int size){
        String sql ="with x as (select ROW_NUMBER() over (order by price desc) as r,* from product where id like ? select * from x where r between ?*3-2 and ? * 3";
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("with x as (select *, ROW_NUMBER() over (order by price desc) as r from product where name like ?) select * from x where r between ?*4-3 and ? * 4").bind(0,"%"+texxt+"%")
                    .bind(1,index)
                    .bind(2,index)
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public List<Product> serchbynam(String name){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where name like ?").bind(0,"%"+name+"%").mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }    public List<Product> getPDMSP(String idcategogy){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where idcategogy=?").bind(0,idcategogy).mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public Product getByID(String id){

        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where id=?").bind(0,id).mapToBean(Product.class).first();
        });
    }

    public Product getByIDP(String id){

        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where id=?SELECT *\n" +
                    "FROM product INNER JOIN `comment` ON product.id=`comment`.id\n" +
                    "WHERE product.id=?").bind(0,id).mapToBean(Product.class).first();
        });
    }


    public static void main(String[] args) {
        ProductDao productDao = new ProductDao();
        int list =productDao.getNameTrademark("Johnnie-Walker").size();

            System.out.println(list);


    }
}
