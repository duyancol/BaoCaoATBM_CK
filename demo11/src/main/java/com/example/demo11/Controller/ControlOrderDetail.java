package com.example.demo11.Controller;

import com.example.demo11.dao.AdOrder;
import com.example.demo11.dao.OrderDao;
import com.example.demo11.model.Detail;
import com.example.demo11.model.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ControlOrderDetail", value = "/ControlOrderDetail")
public class ControlOrderDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id =request.getParameter("id");
        OrderDao orderDao = new OrderDao();
        AdOrder adOrder = new AdOrder();
        Order order = orderDao.getByID(id);
        List<Detail> details= adOrder.getAllOrderdetail(id);
        request.setAttribute("getdetail",details);
        request.setAttribute("details",order);
        request.getRequestDispatcher("orderdetail.jsp").forward(request,response);
    }
}
