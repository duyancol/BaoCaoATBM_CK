package com.example.demo11.Sevice;

import com.example.demo11.dao.CommentDao;
import com.example.demo11.dao.dmdao;
import com.example.demo11.model.Comment;

import java.util.List;

public class CommentService {
    private  static CommentService instance;
    private CommentService(){

    }
    public static CommentService getInstance(){
        if(instance == null){
            instance = new CommentService();
        }
        return instance;
    }

    public List<Comment> getAllComment(String id){
        return CommentDao.getInstance().getAllComment(id);
    }
    public boolean InsertComment(String content, String id, String username) {
        return CommentDao.getInstance().InsertComment(content,id,username);
    }
    public List<Comment> getAllComment1() {
        return CommentDao.getInstance().getAllComment1();
    }
}
