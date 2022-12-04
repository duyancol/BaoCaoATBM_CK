package com.example.demo11.Controller;

import com.example.demo11.dao.ProductAdminDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
@MultipartConfig
@WebServlet(name = "uploadFileDaky", value = "/uploadFileDaky")
public class uploadFileDaky extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");


        Part part = request.getPart("file2");

        String realPass = request.getServletContext().getRealPath("/file");
        String filename = Path.of("daky"+part.getSubmittedFileName()).getFileName().toString();
        if (!Files.exists(Path.of(realPass))) {
            Files.createDirectories(Path.of(realPass));
            response.sendRedirect("Servlet3");
        }
        part.write(realPass + "/" + filename);
//        try (PrintWriter out=response.getWriter()){
//            out.println("<img src='assets/"+filename+"'>");
//
//        }





    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
processRequest(request,response);
    }
}
