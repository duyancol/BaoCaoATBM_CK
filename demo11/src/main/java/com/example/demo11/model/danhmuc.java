package com.example.demo11.model;

public class danhmuc {
    private String idcategogy;
    private String namecategogy;
    private String groupprouct;

    public danhmuc() {
    }

    public danhmuc(String idcategogy, String namecategogy, String groupprouct) {
        this.idcategogy = idcategogy;
        this.namecategogy = namecategogy;
        this.groupprouct = groupprouct;
    }

    public String getIdcategogy() {
        return idcategogy;
    }

    public void setIdcategogy(String idcategogy) {
        this.idcategogy = idcategogy;
    }

    public String getNamecategogy() {
        return namecategogy;
    }

    public void setNamecategogy(String namecategogy) {
        this.namecategogy = namecategogy;
    }

    public String getGroupprouct() {
        return groupprouct;
    }

    public void setGroupprouct(String groupprouct) {
        this.groupprouct = groupprouct;
    }
}
