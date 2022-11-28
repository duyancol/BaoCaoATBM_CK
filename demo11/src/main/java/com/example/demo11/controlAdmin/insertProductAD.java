package com.example.demo11.controlAdmin;

import com.example.demo11.dao.ProductAdminDao;
import com.example.demo11.dao.TrademarkDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "insertProductAD", value = "/insertProductAD")
public class insertProductAD extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String price =request.getParameter("price");
        String quantity =request.getParameter("quantity");
        String img = request.getParameter("img");
        String saleprice =request.getParameter("saleprice");
        String mota = request.getParameter("mota");
        String idcategogy = request.getParameter("idcategogy");
        String img1 = request.getParameter("img1");
        String img2 = request.getParameter("img2");
        String img3 = request.getParameter("img3");



       ProductAdminDao dao = new ProductAdminDao();
        dao.insertPro(id,name,price,quantity,img,saleprice,mota,idcategogy);
        response.sendRedirect("Servlet3");
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
