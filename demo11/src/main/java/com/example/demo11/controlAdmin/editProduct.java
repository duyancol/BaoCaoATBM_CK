package com.example.demo11.controlAdmin;

import com.example.demo11.Sevice.DMService;
import com.example.demo11.dao.ProductAdminDao;
import com.example.demo11.model.Product;
import com.example.demo11.model.danhmuc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "editProduct", value = "/editProduct")
public class editProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<danhmuc> list = DMService.getInstance().getAll();
//        request.setAttribute("pdlistcc",list);
        String id = request.getParameter("id");
        ProductAdminDao dao = new ProductAdminDao();
        Product list = dao.getProductByID(id);
        request.setAttribute("pd",list);
        List<danhmuc> list1 = DMService.getInstance().getAll();

        request.setAttribute("pdlistcc",list1);
        request.getRequestDispatcher("admin_web/editproduct.jsp").forward(request,response);
    }
}
