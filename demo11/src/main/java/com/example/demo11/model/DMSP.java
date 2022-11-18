package com.example.demo11.model;

public class DMSP {
    private String id;
    private String name;
    private double price;
    private int quantity;
    private int quantitySol;
    private String img;
    private double saleprice;
    private String mota;
    private String idcategogy;

    public DMSP() {
    }

    public DMSP(String id, String name, double price, int quantity, String img, double saleprice, String mota, String idcategogy) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;

        this.img = img;
        this.saleprice = saleprice;
        this.mota = mota;
        this.idcategogy = idcategogy;
    }

    public DMSP(String id) {
        this.id = id;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
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

    public double getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(double saleprice) {
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
}
