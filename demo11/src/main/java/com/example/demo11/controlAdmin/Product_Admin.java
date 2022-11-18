package com.example.demo11.controlAdmin;

import com.example.demo11.model.Comment;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Product_Admin", value = "/Product_Admin")
public class Product_Admin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Comment comment = new Comment();

            request.setAttribute("ttcom",comment.getTotalAllComment());

        request.getRequestDispatcher("admin_web/listcomment.jsp").forward(request,response);
    }
}
