package com.example.demo11.Controller;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.model.Cart;
import com.example.demo11.model.Product;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CartServlet", value = "/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
HttpSession session =request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart ==null){
            cart =Cart.getInstance();
        }
        session.setAttribute("cart",cart);
        request.setAttribute("cart",cart);

        request.getRequestDispatcher("cart1.jsp").forward(request,response);
    }
}
