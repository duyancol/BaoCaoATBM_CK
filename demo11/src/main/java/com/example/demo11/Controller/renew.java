package com.example.demo11.Controller;

import com.example.demo11.dao.NewsDao;
import com.example.demo11.model.News;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "renew", value = "/renew")
public class renew extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        NewsDao daonew = new NewsDao();
        List<News> listn = daonew.getAllNew();
        request.setAttribute("listnew",listn);
        List<News> listtop1 = daonew.getNewTop1re();
        request.setAttribute("listnewtop1",listtop1);

        List<News> listtop23 = daonew.getNewTop23re();
        request.setAttribute("listnewtop23",listtop23);
        request.getRequestDispatcher("new&renew.jsp").forward(request,response);
    }
}
