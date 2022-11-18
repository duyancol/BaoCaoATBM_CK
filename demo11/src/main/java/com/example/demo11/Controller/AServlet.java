package com.example.demo11.Controller;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.model.Cart;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AServlet", value = "/cart-add1")
public class AServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id =request.getParameter("id");
        Product product = PDSevice.getInstance().getByID(id);
        if(product != null){
            HttpSession session = request.getSession();
            Cart cart = (com.example.demo11.model.Cart) session.getAttribute("cart");
            if(cart == null){
                cart=Cart.getInstance();
            }
            cart.put(product);
            session.setAttribute("cart",cart);


        }
        response.sendRedirect("/demo11/Load8product");

        PDSevice.getInstance().getByID(id);

    }

}
