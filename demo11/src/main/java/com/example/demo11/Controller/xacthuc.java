package com.example.demo11.Controller;

import com.example.demo11.model.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "xacthuc", value = "/xacthuc")
public class xacthuc extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession  session =request.getSession();
        String username = request.getParameter("user");
        String phone = request.getParameter("phone");
        String adress = request.getParameter("adress");
        String email = request.getParameter("email");
        Cart cart = (Cart) session.getAttribute("cart");
        String listoder = cart.getTotalName();


        request.setAttribute("adress", adress);
        request.setAttribute("username", username);
        request.setAttribute("phone", phone);
        request.setAttribute("email", email);
        request.setAttribute("listoder", listoder);

        request.getRequestDispatcher("xacthuc.jsp").forward(request,response);
    }
}
