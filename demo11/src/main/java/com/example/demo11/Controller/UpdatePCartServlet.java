package com.example.demo11.Controller;

import com.example.demo11.model.Cart;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "UpdatePCartServlet", value = "/cart-updateQuantity")
public class UpdatePCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        HttpSession session=request.getSession();
        Cart cart =(Cart) session.getAttribute("cart");
        if(cart.get(id)==null){
            response.setStatus(404);
            return;
        }
       int quantity =cart.get(id).getQuantitySol();
       try {
           quantity=Integer.parseInt(request.getParameter("quantity"));
           request.setAttribute("error","cart");



       }catch (NumberFormatException e){
          response.getWriter().println(new Gson().toJson(Map.of("quantity",quantity)));

           return;
       }






           int quantityAfterUpdate = cart.UpdateQuantitySold(id,quantity);
           session.setAttribute("cart",cart);
           response.getWriter().println(new Gson().toJson(Map.of("quantity",quantityAfterUpdate)));


    }

}
