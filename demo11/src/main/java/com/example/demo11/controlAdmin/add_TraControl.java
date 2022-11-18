package com.example.demo11.controlAdmin;

import com.example.demo11.dao.TrademarkDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "add_TraControl", value = "/add_TraControl")
public class add_TraControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String nametrademark = request.getParameter("nametrademark");
        String imgtrademark = request.getParameter("imgtrademark");
        TrademarkDao dao = new TrademarkDao();
        dao.insertTra(nametrademark,imgtrademark);
        response.sendRedirect("trademarksAD");
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
