package com.example.demo11.controlAdmin;

import com.example.demo11.dao.ProductAdminDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Editproductdetail", value = "/Editproductdetail")
public class Editproductdetail extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        request.setCharacterEncoding("UTF-8");
//
//        String id = request.getParameter("id");
//        String name = request.getParameter("name");
//        int price =Integer.parseInt(request.getParameter("price"));
//        String quantity =request.getParameter("quantity");
//        String img = request.getParameter("img");
//        String saleprice =request.getParameter("saleprice");
//        String mota = request.getParameter("mota");
//        String idcategogy = request.getParameter("idcategogy");
//        String img1 = request.getParameter("img1");
//        String img2 = request.getParameter("img2");
//        String img3 = request.getParameter("img3");
//
//
//
//        ProductAdminDao dao = new ProductAdminDao();

//        if(price<=0){
//            request.setAttribute("error", "Product is not null ID");
//            response.sendRedirect("editProduct?id="+id);





 //       }
//        else {
//           dao.editProduct(id,name,String.valueOf(price),quantity,img,saleprice,mota,idcategogy);
//            response.sendRedirect("Servlet3");
//        }

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//processRequest(request,response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        int price =Integer.parseInt(request.getParameter("price"));
        int quantity =Integer.parseInt(request.getParameter("quantity"));
        String img = request.getParameter("img");
        int saleprice =Integer.parseInt(request.getParameter("saleprice"));
        String mota = request.getParameter("mota");
        String idcategogy = request.getParameter("idcategogy");
        String img1 = request.getParameter("img1");
        String img2 = request.getParameter("img2");
        String img3 = request.getParameter("img3");



        ProductAdminDao dao = new ProductAdminDao();
                if(price<=0 || quantity<=0 || saleprice<=0 ) {
                    request.setAttribute("error", "The input parameter must be numeric and greater than 0 !");
                    request.getRequestDispatcher("editProduct?id="+id).forward(request,response);
                }else {
               dao.editProduct(id,name,String.valueOf(price),String.valueOf(quantity),img,String.valueOf(saleprice),mota,idcategogy);
               response.sendRedirect("Servlet3");

                }
    }
}
