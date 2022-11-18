package com.example.demo11.Controller;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.dao.DMSPDAO;
import com.example.demo11.model.DMSP;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdminPServlet", value = "/ADMIN-P")
public class AdminPServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                String idcategogy =request.getParameter("idcategogy");
        List<Product> list1=PDSevice.getInstance().getPDMSP(idcategogy);

        request.setAttribute("pdlist",list1);
        request.getRequestDispatcher("DMServlet").forward(request,response);
    }
}
