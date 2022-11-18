package com.example.demo11.model;

public class News {
    private String newid;
    private  String tittle;
    private String derection;
    private String img;

    public News() {
    }

    public News(String newid, String tittle, String derection, String img) {
        this.newid = newid;
        this.tittle = tittle;
        this.derection = derection;
        this.img = img;
    }

    public String getNewid() {
        return newid;
    }

    public void setNewid(String newid) {
        this.newid = newid;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getDerection() {
        return derection;
    }

    public void setDerection(String derection) {
        this.derection = derection;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
