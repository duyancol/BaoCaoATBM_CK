package com.example.demo11.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import com.aspose.pdf.Document;
import com.aspose.pdf.SaveFormat;
@WebServlet(name = "SeenHD", value = "/SeenHD")
public class SeenHD extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name="tp3.pdf";
        String name1="tp3.html";
        String path=getServletContext().getRealPath("/" + "file" + File.separator + name);
        String path1=getServletContext().getRealPath("/" + "file" + File.separator + name1);
        Document pdfDocument = new Document(path);

        // Lưu tệp PDF dưới dạng HTML
        pdfDocument.save(path1, SaveFormat.Html);
        request.getRequestDispatcher("SeenHD1").forward(request,response);
    }
}
