package com.example.demo11.model;

import com.example.demo11.Sevice.PDSevice;

import java.util.ArrayList;
import java.util.List;

public class Product {
//    private String id;
//    private String name;
//    private int price;
//    private int quantity;
//    private int quantitySol;
//    private String img;
//
//    public Product() {
//    }
//
//    public Product(String id, String name, int price, int quantity, String img) {
//        this.id = id;
//        this.name = name;
//        this.price = price;
//        this.quantity = quantity;
//        this.img = img;
//    }
//
//    public String getId() {
//        return id;
//    }
//
//    public void setId(String id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public int getPrice() {
//        return price;
//    }
//
//    public void setPrice(int price) {
//        this.price = price;
//    }
//
//    public int getQuantity() {
//        return quantity;
//    }
//
//    public void setQuantity(int quantity) {
//        this.quantity = quantity;
//    }
//
//    public String getImg() {
//        return img;
//    }
//
//    public void setImg(String img) {
//        this.img = img;
//    }
//
//    public int getQuantitySol() {
//        return quantitySol;
//    }
//
//    public void setQuantitySol(int quantitySol) {
//        this.quantitySol = quantitySol;
//    }
//    public int getTotalMoney(){
//        return quantitySol * price;
//    }
    private String id;
    private String name;
    private int price;
    private int quantity;
    private int quantitySol;
    private String img;
    private int saleprice;
    private String mota;
    private String idcategogy;
    private String img1;
    private String img2;
    private String img3;

    public Product() {
    }

    public Product(String id) {
        this.id = id;
    }

    public Product(String id, String name, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }
    public Product(String id, String name) {
        this.id = id;
        this.name = name;

    }


    public Product(String id, String name, int price, int quantity, String img, int saleprice, String mota, String idcategogy, String img1, String img2, String img3) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.img = img;
        this.saleprice = saleprice;
        this.mota = mota;
        this.idcategogy = idcategogy;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantitySol() {
        return quantitySol;
    }

    public void setQuantitySol(int quantitySol) {
        this.quantitySol = quantitySol;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(int saleprice) {
        this.saleprice = saleprice;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getIdcategogy() {
        return idcategogy;
    }

    public void setIdcategogy(String idcategogy) {
        this.idcategogy = idcategogy;
    }

    public int getTotalMoney(){
        return price-(price*saleprice)/100;
    }
    public int getTotalMoney1(){
        List<Product> pd = PDSevice.getInstance().getAll();
        return pd.size();
    }



    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }

    public static void main(String[] args) {

    }
}
