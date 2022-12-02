package com.example.demo11.Controller;

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
        String adress = request.getParameter("adress");
        String phone = request.getParameter("phone");

        request.setAttribute("error", adress);
        request.getRequestDispatcher("xacthuc.jsp").forward(request,response);
    }
}
