package com.example.demo11.model;

public class Requestcomment {
    private String recomment;
    private String commentid;
    private String recontent;
    private String reusername;

    public Requestcomment() {
    }

    public Requestcomment(String recomment, String commentid, String recontent, String reusername) {
        this.recomment = recomment;
        this.commentid = commentid;
        this.recontent = recontent;
        this.reusername = reusername;
    }

    public String getRecomment() {
        return recomment;
    }

    public void setRecomment(String recomment) {
        this.recomment = recomment;
    }

    public String getCommentid() {
        return commentid;
    }

    public void setCommentid(String commentid) {
        this.commentid = commentid;
    }

    public String getRecontent() {
        return recontent;
    }

    public void setRecontent(String recontent) {
        this.recontent = recontent;
    }

    public String getReusername() {
        return reusername;
    }

    public void setReusername(String reusername) {
        this.reusername = reusername;
    }
}

