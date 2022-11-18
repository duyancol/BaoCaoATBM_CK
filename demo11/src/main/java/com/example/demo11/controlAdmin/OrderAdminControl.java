package com.example.demo11.controlAdmin;

import com.example.demo11.dao.AdOrder;
import com.example.demo11.model.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderAdminControl", value = "/OrderAdminControl")
public class OrderAdminControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdOrder dao = new AdOrder();
        List<Order> list = dao.getAllOrder();
        request.setAttribute("listorder",list);
        request.getRequestDispatcher("admin_web/oderadmin.jsp").forward(request,response);
    }
}
