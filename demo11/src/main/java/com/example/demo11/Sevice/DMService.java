package com.example.demo11.Sevice;

import com.example.demo11.dao.dmdao;
import com.example.demo11.model.danhmuc;

import java.util.List;

public class DMService {
    private  static DMService instance;
    //    Map<String, Product> productMap = new HashMap<>();
//    {
//        productMap.put("sp1",new Product("sp1","SP1",159,10,"assets/product/a-pd1.jpg"));
//        productMap.put("sp2",new Product("sp2","SP2",159,10,"assets/product/a-pd2.jpg"));
//        productMap.put("sp3",new Product("sp3","SP3",159,10,"assets/product/a-pd3.jpg"));
//        productMap.put("sp4",new Product("sp4","SP4",159,10,"assets/product/a-pd1.jpg"));
//
//    }
    private DMService(){

    }
    public static  DMService getInstance(){
        if(instance == null){
            instance = new DMService();
        }
        return instance;
    }
    public List<danhmuc> getAll(){

        return dmdao.getInstance().getAll();
    }
//    public List<Product> getPDMSP(String idcategogy){
//
//        return ProductDao.getInstance().getPDMSP(idcategogy);
//    }
//    public Product getByID(String id){
//        return ProductDao.getInstance().getByID(id);
//    }
}
