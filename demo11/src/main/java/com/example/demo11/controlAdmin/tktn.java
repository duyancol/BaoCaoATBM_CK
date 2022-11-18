package com.example.demo11.controlAdmin;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.dao.AdOrder;
import com.example.demo11.dao.OrderDao;
import com.example.demo11.model.Order;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "tktn", value = "/tktn")
public class tktn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String d = request.getParameter("d");
        AdOrder order =new AdOrder();
        List<Order> list =order.getAllOrdertheongy12(d) ;
        request.setAttribute("pdlist",list);
        request.getRequestDispatcher("chart").forward(request,response);
    }


}

