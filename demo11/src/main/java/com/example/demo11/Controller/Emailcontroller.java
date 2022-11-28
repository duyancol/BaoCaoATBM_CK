package com.example.demo11.Controller;

import com.example.demo11.dao.userdaosendmail;
import com.example.demo11.model.Email;
import com.example.demo11.model.EmailUntilt;
import com.example.demo11.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Emailcontroller", value = "/Emailcontroller")
public class Emailcontroller extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;

    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
String email = request.getParameter("email");
String userid = request.getParameter("userid");
    userdaosendmail userDao = new userdaosendmail();
    User user =userDao.getUser(userid,email);
    request.setAttribute("list",user);
    if(user==null){
        request.setAttribute("messnot","Username or Email mismatched !");
        request.getRequestDispatcher("formfor.jsp#repass1").forward(request,response);

    }else {
        int code = (int) Math.floor(((Math.random() * 899999) + 100000));
        String codere=String.valueOf(code);
        Email email1 = new Email();
        email1.setFrom("nguyenduy.30719@gmail.com");
        email1.setFromPss("taclwrloeawzgafv");
        email1.setTo(email);
        email1.setSubject("MK:");
        StringBuilder sb= new StringBuilder();
        sb.append("you pass").append(user.getPassword()).append("</b>");
//        email1.setContent(sb.toString());
        email1.setContent(codere);
       EmailUntilt.send(email1);
       userDao.rePss(userid,codere);
        request.setAttribute("mess","Activation code sent !");
       request.getRequestDispatcher("formfor.jsp#repass2").forward(request,response);



    }
}catch (Exception e){
    e.printStackTrace();
}

//        response.sendRedirect("Load8product");


//
//        String recipient = request.getParameter("recipient");
//        String subject = request.getParameter("subject");
//        String content = request.getParameter("content");
//
//        String resultMessage = "";
//
//        try {
//            EmailUntilt.sendEmail(host, port, user, pass, recipient, subject,
//                    content);
//            resultMessage = "The e-mail was sent successfully";
//        } catch (Exception ex) {
//            ex.printStackTrace();
//            resultMessage = "There were an error: " + ex.getMessage();
//        } finally {
//            request.setAttribute("Message", resultMessage);
//            getServletContext().getRequestDispatcher("/thongbo.jsp").forward(
//                    request, response);
//        }
//    }
//        String email = request.getParameter("email");
//String userid = request.getParameter("userid");
//    userdaosendmail userDao = new userdaosendmail();
//    User user =userDao.getUser(userid,email);
//    }
    }
}
