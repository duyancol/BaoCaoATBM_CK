package com.example.demo11.Controller;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.model.Cart;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AServlet", value = "/cart-add1")
public class AServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

doPost(request, response);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //  String id =request.getParameter("id");
        String id = request.getParameter("exits1");

        //List<Product> list = PDSevice.getInstance().get8nextproduct(Integer.parseInt(amount));
        Product product = PDSevice.getInstance().getByID(id);




        if(product != null){
            HttpSession session = request.getSession();
            Cart cart = (com.example.demo11.model.Cart) session.getAttribute("cart");
            if(cart == null){
                cart=Cart.getInstance();
            }
            cart.put(product);
            session.setAttribute("cart",cart);
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html");
            String amount = "0";

            List<Cart> list = new ArrayList<>();
            // Hello
            PrintWriter out = response.getWriter();
            for (Product o : cart.getProductList()) {

                out.println(" <tr class=\"product1\">\n" +
                        "                <td></td>\n" +
                        "                <td><img src=\""+o.getImg()+"\" alt=\"\"></td>\n" +
                        "                <td>"+o.getName()+" </td>\n" +
                        "                <td>"+o.getPrice()+"</td>\n" +

                        "                <td>\n" +
                        "                    <input class=\"changeQuantity\" pid=\"${product.id}\" type=\"number\" value=\""+o.getQuantitySol()+"\">\n" +
                        "                </td>\n" +
                        "                <td><div class=\"total-product\">"+o.getTotalMoney()+"</div></td>\n" +
                        "\n" +
                        "                <td><button type=\"button\" class=\"btn btn-danger remove-product\" pid=\"${product.id}\"><i class=\"fas fa-trash-alt\"></i></button></td>\n" +
                        "\n" +
                        "            </tr>");


        }
       // response.sendRedirect("/demo11/Load8product");

        PDSevice.getInstance().getByID(id);

    }}
    public void destroy() {
    }
}
