package com.example.demo11.model;

import com.example.demo11.dao.AdOrder;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Order implements Serializable {
    private int id;
    private User user;
    private List<Detail> details;
    private int total;
    private String adress;
    private int status;
    private Date createAt;
    private Date updateAt;
    private int sum;
    private String tensp;
    private int price;

    public Order() {
    }

//    public Order(int id, User user, String total, Date createAt, Date updateAt) {
//        this.id = id;
//        this.user = user;
//        this.total = total;
//        this.createAt = createAt;
//        this.updateAt = updateAt;
//    }


    public Order(int id, User user, int total, String adress, int status, Date createAt, Date updateAt) {
        this.id = id;
        this.user = user;
        this.total = total;
        this.adress = adress;
        this.status = status;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }
    public Order(int id, User user, int total, String adress, int status, Date createAt, Date updateAt,int sum,String tensp,int price) {
        this.id = id;
        this.user = user;
        this.total = total;
        this.adress = adress;
        this.status = status;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.sum=sum;
        this.tensp=tensp;
        this.price=price;
    }

    public Order(int id, User user, List<Detail> details, Date createAt, Date updateAt) {
        this.id = id;
        this.user = user;
        this.details = details;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Detail> getDetails() {
        return details;
    }

    public void setDetails(List<Detail> details) {
        this.details = details;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public int getStatus() {
        return status;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    public int getTotalOder(){
        AdOrder dao = new AdOrder();
        double totalPrice =0;

        for(Order order : dao.getAllOrder()) {
            totalPrice += order.getTotal();
        }
        return (int) totalPrice;
    }
    public int getTotalSizeOder(){
        AdOrder dao = new AdOrder();
        double totalPrice =0;

       totalPrice=dao.getAllOrder().size();
        return (int) totalPrice;
    }
    public int getTotalOderReturn(){
        AdOrder dao = new AdOrder();
        double totalPrice =0;
        for(Order order : dao.getAllOrder()) {
            if(order.getStatus()==3){
                totalPrice++;

            }
        }



        return (int) totalPrice;
    }

    public static void main(String[] args) {
        Order order = new Order();
        System.out.println(order.getTotalOderReturn());
    }
}
