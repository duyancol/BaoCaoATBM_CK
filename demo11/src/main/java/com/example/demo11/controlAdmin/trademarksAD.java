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

@WebServlet(name = "trademarksAD", value = "/trademarksAD")
public class trademarksAD extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
TrademarkDao dao = new TrademarkDao();
        List<Trademark> list = dao.getAllProduct();

        List<danhmuc> list1 = DMService.getInstance().getAll();
        request.setAttribute("pdlistcc",list1);
        request.setAttribute("listtra",list);
        request.getRequestDispatcher("admin_web/trademark.jsp").forward(request,response);
    }
}
