package com.example.demo11.controlAdmin;

import com.example.demo11.Sevice.DMService;
import com.example.demo11.dao.ProductAdminDao;
import com.example.demo11.dao.ProductDao;
import com.example.demo11.model.Product;
import com.example.demo11.model.danhmuc;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Servlet3", value = "/Servlet3")
public class Servlet3 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductAdminDao productAdminDao = new ProductAdminDao();
        List<Product> list = productAdminDao.getAllProduct();

//        List<danhmuc> list1 = DMService.getInstance().getAll();
//                    request.setAttribute("pdlistcc",list1);
        request.setAttribute("listDM",list);
        List<danhmuc> list1 =DMService.getInstance().getAll();
        request.setAttribute("listdm",list1);
        request.getRequestDispatcher("admin_web/product_add.jsp").forward(request,response);
    }
}
