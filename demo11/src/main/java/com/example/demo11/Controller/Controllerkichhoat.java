package com.example.demo11.Controller;

import com.example.demo11.dao.userdaosendmail;
import com.example.demo11.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "kichhoat", value = "/kichhoat")
public class Controllerkichhoat extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ma = request.getParameter("ma");
        String email = request.getParameter("email");
        String userid = request.getParameter("userid");

        userdaosendmail userDao = new userdaosendmail();
        User user =userDao.getUser(userid,email);
        request.setAttribute("list1",user);
        System.out.println(user.getRepss());
        if(ma.equals(user.getRepss())){
            request.setAttribute("mess","Activation sucess !");
            request.getRequestDispatcher("formfor.jsp").forward(request,response);

//            response.sendRedirect("formfor.jsp");
        }else{
            request.setAttribute("mess","activation code is not correct !");
            request.getRequestDispatcher("formfor.jsp").forward(request,response);
        }
    }
}
