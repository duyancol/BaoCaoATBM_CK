package com.example.demo11.Controller;

import com.example.demo11.Sevice.UserService;
import com.example.demo11.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/doLogin")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user =UserService.getInstance().checkLogin(username,password);
        //   response.getWriter().println("email"+email);
        //  response.getWriter().println("passwords"+password);
        if (user!=null) {
            HttpSession session=request.getSession();
            session.setAttribute("auth",user);
            response.sendRedirect("Load8product");
        } else {
            //  response.getWriter().println("login fail");
            request.setAttribute("error", "Username or passwords is incorrect");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }
}
