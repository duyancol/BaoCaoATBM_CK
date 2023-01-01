package com.example.demo11.dao;

import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.Product;
import com.example.demo11.model.UserKey;

import java.util.List;
import java.util.stream.Collectors;

public class userkeyDao {
    private static userkeyDao instance;
    public static userkeyDao getInstance(){
        if(instance == null){
            instance = new userkeyDao();
        }
        return instance;
    }
    public List<UserKey> getPDMSP(String id){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from chukiso where iduser=?").bind(0,id).mapToBean(UserKey.class).stream().collect(Collectors.toList());
        });
    }
    public List<UserKey> getKey(String id){
        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from chukiso where iduser=?").bind(0,id).mapToBean(UserKey.class).stream().collect(Collectors.toList());
        });
    }
    public boolean insertYeuCauKey(String iduer, String bidanh, String matkhaukey, String diachi,String tendaydu) {
        int i= JDBIConnector.get().withHandle(h->
                h.createUpdate("INSERT INTO `chukiso`(`iduser`,`bidanh`, `matkhaukey`, `diachi`, `tendaydu`,`tinhtrang`) VALUES (?,?,?,?,?,0)")
                        .bind(0,iduer)
                        .bind(1,bidanh)
                        .bind(2,matkhaukey)
                        .bind(3,diachi)
                        .bind(4,tendaydu)
                        .execute()

        );

        return i==1;


    }
    public boolean updateYeuCauKey(String idkey, String path, String publickey) {
        int i= JDBIConnector.get().withHandle(h->
                h.createUpdate("UPDATE `chukiso` SET `path`=?,`publickey`=? ,`tinhtrang`=1 WHERE `id`=?")
                        .bind(0,path)
                        .bind(1,publickey)
                        .bind(2,idkey)
                        .execute()

        );

        return i==1;


    }

    public static void main(String[] args) {
        userkeyDao userkeyDao = new userkeyDao();
        System.out.println(userkeyDao.getKey("1").get(userkeyDao.getKey("1").size()-1).getPublickey());
    }
}
