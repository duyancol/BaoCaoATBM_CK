package com.example.demo11.model;

import java.io.Serializable;
import java.sql.Connection;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.example.demo11.dao.ProductDao;
import com.example.demo11.model.Product;

public class Cart implements Serializable {
    private static final long serialVersionUID=1L;
//   private static Cart instance;
    private  final Map<String,Product> productList;
    private Cart(){
productList = new HashMap<>();
    }

        public static Cart getInstance(){
//            if(instance == null){
//                instance = new Cart();
//            }
//            return instance;
            return new Cart();
        }
        public void put(Product  product){
        if(productList.containsKey(product.getId())){
upQuantity(product.getId());
        }else

product.setQuantitySol(1);

        productList.put(product.getId(),product);
        }
        private void upQuantity(String id){
        Product product =productList.get(id);
        product.setQuantitySol(product.getQuantitySol()+1);
        }
        public Product get(String id){
        return productList.get(id);
        }
    public Product remove(String id){
        return productList.remove(id);
    }
    public void UpdateQuantity(String id,int quantity){
        Product product =productList.get(id);
        product.setQuantitySol(quantity);
    }
    public double getTotalPrice(){
        double totalPrice =0;
        for (Product product:productList.values()){
            totalPrice+=product.getTotalMoney();
        }
        return totalPrice;
    }
    public int getTotalPrice1(){
        int totalPrice =0;
        for (Product product:productList.values()){
            totalPrice=productList.size() ;
        }
        return totalPrice;
    }

    public double getTotalQuantity(){
        double totalQuantity =0;
        for (Product product:productList.values()){
            totalQuantity+=product.getQuantitySol();
        }
        return totalQuantity;
    }
    public Collection<Product> getProductList(){
        return  productList.values();
    }


    public int UpdateQuantitySold(String id, int quantity) {
        Product product =productList.get(id);
        if(quantity<1||quantity>product.getQuantity()){
            return product.getQuantitySol();
        }
        product.setQuantitySol(quantity);
        return product.getQuantitySol();
    }
}
