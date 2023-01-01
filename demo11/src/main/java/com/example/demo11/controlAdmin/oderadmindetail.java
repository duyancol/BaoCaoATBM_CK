package com.example.demo11.controlAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "oderadmindetail", value = "/oderadmindetail")
public class oderadmindetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String idoser = request.getParameter("id");
        String username = request.getParameter("username");
        String file = "HoaDon"+idoser+"daky.pdf";
        String path = "file/"+file;

        request.setAttribute("path", idoser);
        request.setAttribute("username", username);

        request.getRequestDispatcher("admin_web/viewodercustomer.jsp").forward(request,response);
    }
}
