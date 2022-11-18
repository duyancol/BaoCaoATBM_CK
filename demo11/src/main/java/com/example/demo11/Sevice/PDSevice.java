package com.example.demo11.Sevice;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import  com.example.demo11.model.Product;
import com.example.demo11.dao.ProductDao;
public class PDSevice {
    private  static PDSevice instance;
//    Map<String, Product> productMap = new HashMap<>();
//    {
//        productMap.put("sp1",new Product("sp1","SP1",159,10,"assets/product/a-pd1.jpg"));
//        productMap.put("sp2",new Product("sp2","SP2",159,10,"assets/product/a-pd2.jpg"));
//        productMap.put("sp3",new Product("sp3","SP3",159,10,"assets/product/a-pd3.jpg"));
//        productMap.put("sp4",new Product("sp4","SP4",159,10,"assets/product/a-pd1.jpg"));
//
//    }
    private PDSevice(){

    }
    public static  PDSevice getInstance(){
        if(instance == null){
            instance = new PDSevice();
        }
        return instance;
    }
    public List<Product> getAll(){

        return ProductDao.getInstance().getAll();
    }
    public List<Product> get8product(){

        return ProductDao.getInstance().get8Product();
    }
    public List<Product> get8nextproduct(int amont){

        return ProductDao.getInstance().get8nextProduct(amont);
    }
    public List<Product> count(String text){

        return ProductDao.getInstance().count(text);
    }
    public List<Product> serch(String text,int index,int size){

        return ProductDao.getInstance().search(text,index,size);
    }
    public List<Product> getPDMSP(String idcategogy){

        return ProductDao.getInstance().getPDMSP(idcategogy);
    }
    public Product getByID(String id){
       return ProductDao.getInstance().getByID(id);
    }
    public Product getByIDP(String id){
        return ProductDao.getInstance().getByIDP(id);
    }
    public List<Product> serchByName(String name){
        return ProductDao.getInstance().serchbynam(name);
    }
}
