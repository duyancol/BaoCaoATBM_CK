package com.example.demo11.controlAdmin;

import com.example.demo11.dao.ADMINCOMENT;
import com.example.demo11.dao.TrademarkDao;
import com.example.demo11.model.Trademark;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "deleteTraControl", value = "/deleteTraControl")
public class deleteTraControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String idtrademark = request.getParameter("idtrademark");
        TrademarkDao dao = new TrademarkDao();
        dao.dele(idtrademark);
        response.sendRedirect("trademarksAD");
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
