package com.example.demo11.dao;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.Comment;
import com.example.demo11.model.Product;
import com.example.demo11.model.danhmuc;

import java.util.List;
import java.util.stream.Collectors;

public class CommentDao {
    private static CommentDao instance;

    public static CommentDao getInstance() {
        if (instance == null) {
            instance = new CommentDao();
        }
        return instance;
    }


    public boolean InsertComment(String content, String id, String username) {
        int i = JDBIConnector.get().withHandle(h ->
                h.createUpdate("INSERT INTO commment(content,id,username) VALUES (?,?,?)")
                        .bind(0, content)
                        .bind(1, id)
                        .bind(2, username)
                        .execute()

        );

        return i == 1;
    }



    public List<Comment> getAllComment(String id) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from commment where id=?").bind(0,id).mapToBean(Comment.class).stream().collect(Collectors.toList());
        });

    }
    public List<Comment> getAllComment1() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT *FROM commment").mapToBean(Comment.class).stream().collect(Collectors.toList());
        });

    }
    public static int index(){
        int sum=0;
        for (int i=0;i<10;i++){
            sum+=i+1;
        }
        return sum;
    }


    public static void main(String[] args) {
        CommentDao dao = new CommentDao();


        System.out.println(dao.getAllComment1().get(0).getCommentid());
    }




}
