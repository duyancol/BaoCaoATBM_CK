package com.example.demo11.dao;

import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.Comment;
import com.example.demo11.model.Requestcomment;

import java.util.List;
import java.util.stream.Collectors;

public class ReCommentDao {
    private static ReCommentDao instance;

    public static ReCommentDao getInstance() {
        if (instance == null) {
            instance = new ReCommentDao();
        }
        return instance;
    }
    public List<Requestcomment> getRequestdentailComment(String commentid) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from request_comment where commentid=? ").bind(0,commentid).mapToBean(Requestcomment.class).stream().collect(Collectors.toList());
        });

    }
    public boolean InsertRequestComment(String commentid, String recontent, String reusername) {
        int i = JDBIConnector.get().withHandle(h ->
                h.createUpdate("INSERT INTO request_comment(commentid,recontent,reusername) VALUES (?,?,?)")
                        .bind(0, commentid)
                        .bind(1, recontent)
                        .bind(2, reusername)
                        .execute()

        );

        return i == 1;
    }

    public static void main(String[] args) {
        ReCommentDao reCommentDao = new ReCommentDao();
        System.out.println(reCommentDao.getRequestdentailComment("4"));
    }
}
