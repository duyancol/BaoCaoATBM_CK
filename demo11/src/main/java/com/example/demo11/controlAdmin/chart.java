package com.example.demo11.controlAdmin;

import com.example.demo11.dao.AdOrder;
import com.example.demo11.model.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "chart", value = "/chart")
public class chart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        AdOrder order =new AdOrder();
//        List<Order> list =order.getAllOrdertheongy("2022-06-20") ;
//        request.setAttribute("pdlist",list);
        request.getRequestDispatcher("chart.jsp").forward(request,response);
    }
}
