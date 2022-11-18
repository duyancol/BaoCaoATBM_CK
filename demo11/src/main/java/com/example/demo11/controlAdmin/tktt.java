package com.example.demo11.controlAdmin;

import com.example.demo11.dao.AdOrder;
import com.example.demo11.model.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "tktt", value = "/tktt")
public class tktt extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String m =request.getParameter("m");
        AdOrder order =new AdOrder();
        List<Order> list =order.getAllOrdertheomonth(m) ;
        request.setAttribute("lmont",list);
        request.getRequestDispatcher("chartmonth").forward(request,response);
    }
}
