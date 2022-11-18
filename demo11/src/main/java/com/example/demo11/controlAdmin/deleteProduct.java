package com.example.demo11.controlAdmin;

import com.example.demo11.dao.ProductAdminDao;
import com.example.demo11.dao.TrademarkDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "deleteProduct", value = "/deleteProduct")
public class deleteProduct extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
       ProductAdminDao dao = new ProductAdminDao();
        dao.dele(id);
        response.sendRedirect("Servlet3");
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
