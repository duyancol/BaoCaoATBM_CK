package com.example.demo11.controlAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet(name = "CreateKeyController", value = "/CreateKeyController")
public class CreateKeyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");


                String name="keyStore.pfx";
                String path=getServletContext().getRealPath("/" + "file" + File.separator + name);
            String bidanh=request.getParameter("author");
            String mk=request.getParameter("password");
            String remk=request.getParameter("repassword");
            String tinhtp=request.getParameter("city");
            String diachi=request.getParameter("adress");
            String ten =request.getParameter("username");

            try {
                // kiểm tra ping google.com (gửi 5 gói tin)
                ProcessBuilder builder = new ProcessBuilder("cmd.exe", "/c", "keytool -genkeypair -keyalg RSA -keysize 2048 -keystore \""+path+"\" -alias "+bidanh+" -dname \"CN="+ten+",OU="+tinhtp+",O="+tinhtp+",C="+diachi+"\" -storepass "+mk+" -keypass "+remk+" -validity 3650");
                // thực thi command line
                Process p = builder.start();
                // lấy kết quả trả về trên command line
                BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
                String line;
                while (true) {
                    line = r.readLine();
                    if (line == null) {
                        break;
                    }
                    System.out.println(line);
                }
                response.sendRedirect("Servlet4");

            } catch (IOException ex) {
                System.out.println("loi Ping: " + ex.toString());
            }



    }
}
