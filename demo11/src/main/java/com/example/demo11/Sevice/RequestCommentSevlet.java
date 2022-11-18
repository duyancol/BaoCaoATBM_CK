package com.example.demo11.Sevice;

import com.example.demo11.dao.ReCommentDao;
import com.example.demo11.model.Requestcomment;

import java.util.List;

public class RequestCommentSevlet {
    private  static RequestCommentSevlet instance;
    private RequestCommentSevlet(){

    }
    public static RequestCommentSevlet getInstance(){
        if(instance == null){
            instance = new RequestCommentSevlet();
        }
        return instance;
    }
    public List<Requestcomment> getRequestdentailComment(String commentid) {
        return ReCommentDao.getInstance().getRequestdentailComment(commentid);
    }
    public boolean InsertRequestComment(String commentid, String recontent, String reusername) {
        return ReCommentDao.getInstance().InsertRequestComment(commentid,recontent,reusername);
    }
}
