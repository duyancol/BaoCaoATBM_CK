package com.example.demo11.controlAdmin;

import com.example.demo11.dao.NewsDao;
import com.example.demo11.model.News;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Newadmin", value = "/Newadmin")
public class Newadmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        NewsDao daonew = new NewsDao();
        List<News> listn = daonew.getAllNew();
        request.setAttribute("listnew",listn);
        request.getRequestDispatcher("admin_web/newadmin.jsp").forward(request,response);
    }
}
