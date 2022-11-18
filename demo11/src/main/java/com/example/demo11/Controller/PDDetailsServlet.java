package com.example.demo11.Controller;


import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.model.Cart;
import com.example.demo11.model.Comment;
import com.example.demo11.model.Product;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "PDDetailsServlet", value = "/PDDetailsServlet")
public class PDDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id =request.getParameter("id");
        Product product =PDSevice.getInstance().getByID(id);

        Comment comment = new Comment();
        request.setAttribute("ttalcom",comment.getTotalComment(id));


request.setAttribute("details",product);
        request.getRequestDispatcher("dentail_product.jsp").forward(request,response);

    }

}
