package com.example.demo11.Controller;

import com.example.demo11.dao.ProductAdminDao;
import com.example.demo11.dao.updatestatus;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateStatus", value = "/UpdateStatus")
public class UpdateStatus extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String status = request.getParameter("status");

        if(status.equals("Đang chờ xác thực")){
            status="0";
            updatestatus dao = new updatestatus();
            dao.updateStatus(status,id);
            response.sendRedirect("OrderAdminControl");
        }
        if(status.equals("Đã xác thực")){
            status="1";
            updatestatus dao = new updatestatus();
            dao.updateStatus(status,id);
            response.sendRedirect("OrderAdminControl");
        }
        if(status.equals("Đang giao hàng")){
            status="2";
            updatestatus dao = new updatestatus();
            dao.updateStatus(status,id);
            response.sendRedirect("OrderAdminControl");
        }
        if(status.equals("Đã giao hàng")){
            status="3";
            updatestatus dao = new updatestatus();
            dao.updateStatus(status,id);
            response.sendRedirect("OrderAdminControl");
        }
        if(status.equals("Hủy đơn hàng")){
            status="4";
            updatestatus dao = new updatestatus();
            dao.updateStatus(status,id);
            response.sendRedirect("OrderAdminControl");
        }





    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
processRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
}
