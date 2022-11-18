package com.example.demo11.Controller;

import com.example.demo11.dao.AdOrder;
import com.example.demo11.dao.OrderDao;
import com.example.demo11.dao.TichLuyDao;
import com.example.demo11.model.Order;
import com.example.demo11.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.file.FileStore;
import java.util.List;

@WebServlet(name = "userseenOrder", value = "/userseenOrder")
public class userseenOrderControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String user_id =request.getParameter("user_id");
        AdOrder dao = new AdOrder();
        HttpSession  session =request.getSession();
        List<Order> list = dao.getAllOrderByName((User) session.getAttribute("auth"));
        request.setAttribute("listorder",list);
        request.getRequestDispatcher("userlistorder.jsp").forward(request,response);
    }
}
