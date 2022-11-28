package com.example.demo11.controlAdmin;

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
import java.util.Iterator;
import java.util.List;

@MultipartConfig
@WebServlet(name = "UploadControl", value = "/UploadControl")
public class UploadControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String file_name = null;
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
//        if (!isMultipartContent) {
//            return;
//        }
//        FileItemFactory factory = new DiskFileItemFactory();
//        ServletFileUpload upload = new ServletFileUpload(factory);
//        try {
//            List<FileItem> fields = upload.parseRequest(request);
//            Iterator< FileItem > it = fields.iterator();
//            if (!it.hasNext()) {
//                return;
//            }
//            while (it.hasNext()) {
//                FileItem fileItem = it.next();
//                boolean isFormField = fileItem.isFormField();
//                if (isFormField) {
//                    if (file_name == null) {
//                        if (fileItem.getFieldName().equals("file_name")) {
//                            file_name = fileItem.getString();
//                        }
//                    }
//                } else {
//                    if (fileItem.getSize() > 0) {
//                        fileItem.write(new File("D:\\uploaded_files\\" + fileItem.getName()));
//                        request.setAttribute("class",fileItem.getFieldName());
//                        request.getRequestDispatcher("Servlet3").forward(request,response);
//                    }
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//
//            out.close();
//        }

    }
}
