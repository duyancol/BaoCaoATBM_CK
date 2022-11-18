package com.example.demo11.controlAdmin;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.dao.AdOrder;
import com.example.demo11.dao.UserDao;
import com.example.demo11.model.Order;
import com.example.demo11.model.Product;
import com.example.demo11.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Dashboard", value = "/Dashboard")
public class Dashboard extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = PDSevice.getInstance().getAll();
        request.setAttribute("pdlist",list);

        AdOrder dao = new AdOrder();
        List<Order> list1 = dao.getAllOrder();
        Order order = new Order();

        List<User> users = UserDao.getInstance().getAllTpUser();
        request.setAttribute("listuser", users);
        request.setAttribute("listorder", order.getTotalOder());
        request.setAttribute("listordersize", order.getTotalSizeOder());
        request.setAttribute("listorderreturn", order.getTotalOderReturn());
        request.getRequestDispatcher("admin_web/admin.jsp").forward(request,response);
    }
}
