package com.example.demo11.Controller;

import com.example.demo11.Sevice.DMService;
import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.dao.TrademarkDao;
import com.example.demo11.model.Trademark;
import com.example.demo11.model.danhmuc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DMServlet", value = "/DMServlet")
public class DMServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TrademarkDao dao = new TrademarkDao();
        List<danhmuc> list = DMService.getInstance().getAll();
        List<Trademark> list1=dao.getAllProduct();

        request.setAttribute("pdlistcc",list);
        request.setAttribute("listTra",list1);


//        request.getRequestDispatcher("listallproduct.jsp").forward(request,response);
        request.getRequestDispatcher("listallproduct.jsp").forward(request,response);


    }
}
