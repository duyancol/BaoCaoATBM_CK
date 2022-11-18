package com.example.demo11.model;

public class Trademark {
    private String idtrademark;
    private  String nametrademark;
    private String imgtrademark;

    public Trademark() {
    }

    public Trademark(String idtrademark, String nametrademark, String imgtrademark) {
        this.idtrademark = idtrademark;
        this.nametrademark = nametrademark;
        this.imgtrademark = imgtrademark;
    }

    public String getIdtrademark() {
        return idtrademark;
    }

    public void setIdtrademark(String idtrademark) {
        this.idtrademark = idtrademark;
    }

    public String getNametrademark() {
        return nametrademark;
    }

    public void setNametrademark(String nametrademark) {
        this.nametrademark = nametrademark;
    }

    public String getImgtrademark() {
        return imgtrademark;
    }

    public void setImgtrademark(String imgtrademark) {
        this.imgtrademark = imgtrademark;
    }
}
