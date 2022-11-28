package com.example.demo11.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import com.example.demo11.dao.dmdao;
import com.example.demo11.model.danhmuc;

@WebServlet(name = "CategoryControler", value = "/CategoryControler")
public class CategoryControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        dmdao dao = new dmdao();
        List<danhmuc> list= dao.getAll();
        request.setAttribute("pdlistcc",list);
        request.getRequestDispatcher("cart").forward(request,response);

    }
}
