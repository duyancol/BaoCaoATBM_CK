package com.example.demo11.model;

import java.io.Serializable;
import java.sql.Connection;
import java.util.*;

import com.example.demo11.dao.ProductDao;
import com.example.demo11.model.Product;

public class Cart implements Serializable {
    Product product;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

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
//            return product.getQuantitySol();
           return product.getQuantity();
        }
        product.setQuantitySol(quantity);
        return product.getQuantitySol();
    }
    public String getTotalName(){
        String name ="";

              for (Product pd:productList.values()){
           name+= pd.getName()+"\t"+"price:"+pd.getPrice()+"\t"+"quantity:"+pd.getQuantitySol()+"\t\n";



      }
              return name;


    }
    public String getTotalName1(){
        String sum;
        if(true){
            for(Product pd: productList.values()){
                sum=(pd.getName())+"";
                return sum;


            }
        }else {
            return null;
        }


return null;
    }



    public static void main(String[] args) {
        String name;
        Product product = new Product("sp01","san pham 1",1200);
        Product product1 = new Product("sp02","san pham 2",1200);
        Cart cart = new Cart();
        cart.put(product);
        cart.put(product1);


          System.out.println( cart.getTotalName());



    }
}
