package com.example.demo11.controlAdmin;

import com.example.demo11.dao.NewsDao;
import com.example.demo11.dao.ProductDao;
import com.example.demo11.dao.TrademarkDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "add_new", value = "/add_new")
public class add_new extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String tittle = request.getParameter("tittle");
        String derection = request.getParameter("derection");
        String img = request.getParameter("img");
        NewsDao dao = new NewsDao();
        dao.insertNew(tittle,derection,img);
        response.sendRedirect("Newadmin");

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
processRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
processRequest(request,response);
    }
}
