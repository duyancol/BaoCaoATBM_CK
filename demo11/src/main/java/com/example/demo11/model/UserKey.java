package com.example.demo11.model;

public class UserKey {
    private String id;
    private  String iduser;
    private String publickey;
    private String path;
    private  String bidanh;
    private String matkhaukey;
    private String diachi;
    private String tendaydu;
     private  int tinhtrang;

    public UserKey() {
    }

    public UserKey(String id, String iduser, String publickey, String path, String bidanh, String matkhaukey, String diachi, String tendaydu,int tinhtrang) {
        this.id = id;
        this.iduser = iduser;
        this.publickey = publickey;
        this.path = path;
        this.bidanh = bidanh;
        this.matkhaukey = matkhaukey;
        this.diachi = diachi;
        this.tendaydu = tendaydu;
        this.tinhtrang=tinhtrang;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIduser() {
        return iduser;
    }

    public void setIduser(String iduser) {
        this.iduser = iduser;
    }

    public String getPublickey() {
        return publickey;
    }

    public void setPublickey(String publickey) {
        this.publickey = publickey;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getBidanh() {
        return bidanh;
    }

    public void setBidanh(String bidanh) {
        this.bidanh = bidanh;
    }

    public String getMatkhaukey() {
        return matkhaukey;
    }

    public void setMatkhaukey(String matkhaukey) {
        this.matkhaukey = matkhaukey;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getTendaydu() {
        return tendaydu;
    }

    public void setTendaydu(String tendaydu) {
        this.tendaydu = tendaydu;
    }

    public int getTinhtrang() {
        return tinhtrang;
    }

    public void setTinhtrang(int tinhtrang) {
        this.tinhtrang = tinhtrang;
    }
}
