package com.example.demo11.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import  com.example.demo11.dao.userkeyDao;

@WebServlet(name = "InserYeucauKeymoi", value = "/InserYeucauKeymoi")
public class InserYeucauKeymoi extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String bidanhcu = request.getParameter("bidanhcu");
        String bidanhmoi = request.getParameter("bidanhmoi");
        String ten = request.getParameter("ten");
        String diachi = request.getParameter("diachi");
        String matkhau = request.getParameter("matkhau");
        String iduser = request.getParameter("iduser");

        userkeyDao dao = new userkeyDao();
        dao.insertYeuCauKey(iduser,bidanhmoi,matkhau,diachi,ten);
        request.getRequestDispatcher("Load8product").forward(request,response);
    }
}
