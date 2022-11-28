package com.example.demo11.dao;

import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.*;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.result.ResultBearing;

import java.util.List;
import java.util.stream.Collectors;

public class OrderDao {
    private static OrderDao instance;

    public static OrderDao getInstance() {
        if (instance == null) {
            instance = new OrderDao();
        }
        return instance;
    }

    public boolean createOder(User user, Cart cart,String adress,String toltal) {
        int oderid = JDBIConnector.get().withHandle(handle -> {
            ResultBearing resultBearing = handle.createUpdate("INSERT INTO `order`(user_id,status,adress,phone,total,tichluy) VALUES (?,?,?,?,?,?);")
                    .bind(0, user.getName())
                    .bind(1, 0)
                    .bind(2,adress)
                    .bind(3,user.getPhone())
                    .bind(4,cart.getTotalPrice())
                    .bind(5,cart.getTotalPrice()/100)
                    .executeAndReturnGeneratedKeys();
            return resultBearing.mapTo(Integer.class).findFirst().get();
        });

        int total = JDBIConnector.get().withHandle(handle -> {
            int sum = 0;
            for (Product product : cart.getProductList()) {
                sum += handle.createUpdate("INSERT into order_detail (order_id,product_id,price,quantity,note)values (?,?,?,?,?)")
                        .bind(0, oderid)
                        .bind(1, product.getId())
                        .bind(2, product.getPrice())
                        .bind(3, product.getQuantitySol())
                        .bind(4, "").execute();
            }
            return sum;
        });
        int total1 = JDBIConnector.get().withHandle(handle -> {
            int sum = 0;
            for (Product product : cart.getProductList()) {
                sum += handle.createUpdate("UPDATE test4 Set hide=? where name= ?;")
                        .bind(0,user.getHide()+( cart.getTotalPrice()/100))
                        .bind(1, user.getName())
                       .execute();
            }
            return sum;
        });
        return total==cart.getProductList().size();


    }

    public boolean createOdernologin(User user, Cart cart,String user_id,String adress,String phone) {
        int oderid = JDBIConnector.get().withHandle(handle -> {
            ResultBearing resultBearing = handle.createUpdate("INSERT INTO `order`(user_id,status,adress,phone,total) VALUES (?,?,?,?,?);")
                    .bind(0, user_id)
                    .bind(1, 0)
                    .bind(2,adress)
                    .bind(3,phone)
                    .bind(4,cart.getTotalPrice())
                    .executeAndReturnGeneratedKeys();
            return resultBearing.mapTo(Integer.class).findFirst().get();
        });

        int total = JDBIConnector.get().withHandle(handle -> {
            int sum = 0;
            for (Product product : cart.getProductList()) {
                sum += handle.createUpdate("INSERT into order_detail (order_id,product_id,price,quantity,note)values (?,?,?,?,?)")
                        .bind(0, oderid)
                        .bind(1, product.getId())
                        .bind(2, product.getPrice())
                        .bind(3, product.getQuantitySol())
                        .bind(4, "").execute();
            }
            return sum;
        });
        return total==cart.getProductList().size();


    }
//    public List<Order> tktn(String d){
//        return   JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("select * from `order` where created_at like  ?").bind(0,"%"+d+"%").mapToBean(Order.class).stream().collect(Collectors.toList());
//        });
//    }


}
