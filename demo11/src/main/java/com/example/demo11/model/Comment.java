package com.example.demo11.model;

import com.example.demo11.Sevice.CommentService;
import com.example.demo11.dao.ADMINCOMENT;
import com.example.demo11.dao.CommentDao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Comment {
    private String commentid;
    private String content;
    private String id;
    private String username;
    private Product product;

    public Comment() {
    }

    public Comment(String commentid, String content, String id, String username, Product product) {
        this.commentid = commentid;
        this.content = content;
        this.id = id;
        this.username = username;
        this.product = product;
    }

    public String getCommentid() {
        return commentid;
    }

    public void setCommentid(String commentid) {
        this.commentid = commentid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
    public  String test(){
        return product.getName();
    }
    public int getTotalComment(String id){
        CommentDao dao = new CommentDao();
        int t=0;
        t= dao.getAllComment(id).size();
        return t;
    }
    public int getTotalAllComment()  {
       CommentDao dao = new CommentDao();
        int ts=0;
        ts= dao.getAllComment1().size();
        return ts;
    }

    public static void main(String[] args) throws SQLException {

        Comment c = new Comment();
        System.out.println(c.getTotalAllComment());
    }
}