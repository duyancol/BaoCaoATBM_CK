package com.example.demo11.controlAdmin;

import com.example.demo11.dao.updatestatus;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "updateFilePDF", value = "/updateFilePDF")
public class updateFilePDF extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String truonghop = request.getParameter("truonghop");
        String id = request.getParameter("id");
        if(truonghop.equals("1")){
            updatestatus dao = new updatestatus();
            dao.updateStatus("1",id);
            request.setAttribute("capnhat","Cập nhật đơn hàng thành công !");
            request.getRequestDispatcher("OrderAdminControl").forward(request,response);
//            response.sendRedirect("OrderAdminControl");
        }
        if(truonghop.equals("0")){
            updatestatus dao = new updatestatus();
            dao.updateStatus("4",id);
            request.setAttribute("capnhat","Hủy đơn hàng thành công !");
            request.getRequestDispatcher("OrderAdminControl").forward(request,response);
//            response.sendRedirect("OrderAdminControl");
        }

    }
}
