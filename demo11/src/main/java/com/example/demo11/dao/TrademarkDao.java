package com.example.demo11.dao;

import com.example.demo11.db.DBContext;
import com.example.demo11.db.JDBIConnector;
import com.example.demo11.model.Product;
import com.example.demo11.model.Trademark;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class TrademarkDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private static TrademarkDao instance;
    public static TrademarkDao getInstance(){
        if(instance == null){
            instance = new TrademarkDao();
        }
        return instance;
    }
    public Trademark getByName(String name){

        return   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from trademark where nametrademark=?").bind(0,name).mapToBean(Trademark.class).first();
        });
    }
    public void delete(String id){
           JDBIConnector.get().withHandle(handle -> {
               return handle.createQuery("DELETE FROM trademark where idtrademark =?").bind(0,id).mapToBean(Trademark.class).first();
        });


    }
    public List<Trademark> deleteAndReturnUsers(String s) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("DELETE FROM trademark where  = ?")
                    .bind(0, s)
                    .mapToBean(Trademark.class)
                    .list();
        });
    }
    public void dele(String idtrademark) {
                String query = "delete from trademark\n"
                        + "where idtrademark = ?";
                try {
                    conn = new DBContext().getConnection();//mo ket noi voi sql
                    ps = conn.prepareStatement(query);
                    ps.setString(1, idtrademark);
                    ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public List<Trademark> getAllProduct() {
        List<Trademark> list = new ArrayList<>();
        String query = "select * from Trademark";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Trademark(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void insertTra(String nametrademark, String imgtrademark) {
        String query = "INSERT INTO trademark(nametrademark,imgtrademark) VALUES(?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, nametrademark);
            ps.setString(2, imgtrademark);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }



    public static void main(String[] args) {
        TrademarkDao dao = new TrademarkDao();
        System.out.println(dao.getAllProduct().size());
    }

}
