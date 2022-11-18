package com.example.demo11.Controller;

import com.example.demo11.Sevice.DMService;
import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.dao.NewsDao;
import com.example.demo11.dao.TrademarkDao;
import com.example.demo11.model.News;
import com.example.demo11.model.Product;
import com.example.demo11.model.Trademark;
import com.example.demo11.model.danhmuc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Load8product", value = "/Load8product")
public class Load8product extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = PDSevice.getInstance().get8product();
        request.setAttribute("load8sp",list);
//        TrademarkDao dao = new TrademarkDao();
//        List<Trademark> list1 = dao.getAllProduct();
//        request.setAttribute("listTra",list1);
//        List<danhmuc> listcate = DMService.getInstance().getAll();
//        request.setAttribute("pdlistcc",listcate);
//        NewsDao daonew = new NewsDao();
//        List<News> listn = daonew.getAllNew();
//        request.setAttribute("listnew",listn);
//        List<News> listtop1 = daonew.getNewTop1();
//        request.setAttribute("listnewtop1",listtop1);
//
//        List<News> listtop23 = daonew.getNewTop23();
//        request.setAttribute("listnewtop23",listtop23);


//        NewsDao daonew = new NewsDao();
//        List<News> listnew = daonew.getAllNew();
//        request.setAttribute("listnew",listnew);


        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
