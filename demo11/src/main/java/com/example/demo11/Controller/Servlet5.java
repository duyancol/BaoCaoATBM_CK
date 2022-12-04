package com.example.demo11.Controller;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet(name = "Servlet5", value = "/Servlet5")
public class Servlet5 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try(PrintWriter out =response.getWriter()){

    String name=request.getParameter("filename");
    String path=getServletContext().getRealPath("/" + "file" + File.separator + name);

    response.setContentType("APPLICATION/OCTET-STREAM");
    response.setHeader("Content-Disposition","attachment; filename=\""+name+"\"");
    FileInputStream ins = new FileInputStream(path);
    int i;
    while (( i=ins.read())!=-1){
        out.write(i);

    }
    ins.close();
    out.close();
}
            request.getRequestDispatcher("Load8product").forward(request,response);




    }
}
