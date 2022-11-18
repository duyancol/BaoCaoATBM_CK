package com.example.demo11.Controller;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.dao.ProductDao;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListCateGory", value = "/ListCateGory")
public class ListCateGory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nametrademark =request.getParameter("nametrademark");
        ProductDao productDao = new ProductDao();
        List<Product> list1= productDao.getNameTrademark(nametrademark);

        request.setAttribute("pdlist",list1);
        request.getRequestDispatcher("DMServlet").forward(request,response);
    }
}
