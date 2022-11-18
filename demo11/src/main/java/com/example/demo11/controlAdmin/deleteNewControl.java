package com.example.demo11.controlAdmin;

import com.example.demo11.dao.NewsDao;
import com.example.demo11.dao.TrademarkDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "deleteNewControl", value = "/deleteNewControl")
public class deleteNewControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String newid = request.getParameter("newid");
        NewsDao dao = new NewsDao();
        dao.deletenew(newid);
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
