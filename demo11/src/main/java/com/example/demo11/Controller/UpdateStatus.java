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
        if(status.equals("Da giao hang")){
            status="2";
            updatestatus dao = new updatestatus();
            dao.updateStatus(status,id);
            response.sendRedirect("OrderAdminControl");
        }
        if(status.equals("Dang xu ly")){
            status="0";
            updatestatus dao = new updatestatus();
            dao.updateStatus(status,id);
            response.sendRedirect("OrderAdminControl");
        }
        if(status.equals("Dang giao hang")){
            status="1";
            updatestatus dao = new updatestatus();
            dao.updateStatus(status,id);
            response.sendRedirect("OrderAdminControl");
        }
        if(status.equals("Huy don hang")){
            status="3";
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
