package com.example.demo11.Controller;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategogyPServlet", value = "/CategogyPServlet")
public class CategogyPServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idcategogy =request.getParameter("idcategogy");
        List<Product> list1= PDSevice.getInstance().getPDMSP(idcategogy);
//
//        request.setAttribute("pdlistp",list1);
//        request.getRequestDispatcher("categogy-product.jsp").forward(request,response);
//        request.getRequestDispatcher("categogy-product.jsp").forward(request,response);
//        List<Product> list =PDSevice.getInstance().getAll();
        request.setAttribute("pdlist",list1);
        request.getRequestDispatcher("categogy-product.jsp").forward(request,response);

    }
}
