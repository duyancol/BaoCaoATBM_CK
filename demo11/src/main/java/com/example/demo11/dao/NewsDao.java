package com.example.demo11.dao;

import com.example.demo11.db.DBContext;
import com.example.demo11.model.News;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NewsDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;







    public List<News> getAllNew() {
        List<News> list = new ArrayList<>();
        String query = "select * from news ORDER BY newid DESC  LIMIT 4";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new News(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<News> getNewTop1() {
        List<News> list = new ArrayList<>();
        String query = "SELECT * FROM news ORDER BY newid DESC  LIMIT 1";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new News(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<News> getNewTop23() {
        List<News> list = new ArrayList<>();
        String query = "with x as (select *, ROW_NUMBER() over (order by newid desc) as r from news ) select * from x where r between 2 and 3";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new News(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<News> getNewTop1re() {
        List<News> list = new ArrayList<>();
        String query = "SELECT * FROM news where type=0 ORDER BY newid DESC  LIMIT 1";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);

            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new News(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<News> getNewTop23re() {
        List<News> list = new ArrayList<>();
        String query = "with x as (select *, ROW_NUMBER() over (order by newid desc) as r from news  where type=0) select * from x where r between 2 and 3";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new News(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }





    public void insertNew(String tittle, String derection,String img) {
        String query = "INSERT INTO news(tittle,derection,img) VALUES(?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, tittle);
            ps.setString(2, derection);
            ps.setString(3, img);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deletenew(String newid) {
        String query = "delete from news\n"
                + "where newid = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, newid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        NewsDao dao = new NewsDao();
        System.out.println(dao.getAllNew().size());
    }

}
