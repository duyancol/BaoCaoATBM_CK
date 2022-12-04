package com.example.demo11.controlAdmin;

import com.example.demo11.dao.ProductAdminDao;
import com.example.demo11.dao.TrademarkDao;
import com.example.demo11.model.Product;
//import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.FileItemFactory;
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;
//import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
@MultipartConfig
@WebServlet(name = "insertProductAD", value = "/insertProductAD")
public class insertProductAD extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        String img = request.getParameter("img");
        String saleprice = request.getParameter("saleprice");
        String mota = request.getParameter("mota");
        String idcategogy = request.getParameter("idcategogy");
        String img1 = request.getParameter("img1");
        String img2 = request.getParameter("img2");
        String img3 = request.getParameter("img3");

        Part part = request.getPart("file2");

        String realPass = request.getServletContext().getRealPath("/assets");
        String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
        if (!Files.exists(Path.of(realPass))) {
            Files.createDirectories(Path.of(realPass));
        }
        part.write(realPass + "/" + filename);
//        try (PrintWriter out=response.getWriter()){
//            out.println("<img src='assets/"+filename+"'>");
//
//        }

        ProductAdminDao dao = new ProductAdminDao();

        if (Integer.parseInt(price) <= 0) {
            request.setAttribute("error", "Product is not null ID");
            response.sendRedirect("Servlet3");


        } else {

            dao.insertPro(id, name, price, quantity,"assets/"+ filename, saleprice, mota, idcategogy);
            response.sendRedirect("Servlet3");

        }
    }






    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
processRequest(request,response);
    }
}
