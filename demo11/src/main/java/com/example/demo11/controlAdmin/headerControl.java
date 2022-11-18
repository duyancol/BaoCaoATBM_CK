package com.example.demo11.controlAdmin;

import com.example.demo11.Sevice.DMService;
import com.example.demo11.dao.TrademarkDao;
import com.example.demo11.model.Trademark;
import com.example.demo11.model.danhmuc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "headerControl", value = "/headerControl")
public class headerControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TrademarkDao dao = new TrademarkDao();
        List<Trademark> list1 = dao.getAllProduct();
        request.setAttribute("listTra",list1);
        List<danhmuc> listcate = DMService.getInstance().getAll();
        request.setAttribute("pdlistcc",listcate);
        request.getRequestDispatcher("header.jsp").forward(request,response);
    }
}
