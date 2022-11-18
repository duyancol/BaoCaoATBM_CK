package com.example.demo11.Controller;

import com.example.demo11.dao.UserDao;
import com.example.demo11.dao.userdaosendmail;
import com.example.demo11.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "doimkControler", value = "/doimkControler")
public class doimkControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String email = request.getParameter("email");
        String userid = request.getParameter("userid");
        String pss = request.getParameter("pass");
        String repss = request.getParameter("repass");
        userdaosendmail userDao = new userdaosendmail();
//        User user =userDao.getUser(userid,email);
      String s =userDao.hashPassword(pss);
      if(!repss.equals(pss)){
          request.setAttribute("messerror","Pass and Repass mismatched !");
          request.getRequestDispatcher("formfor.jsp").forward(request,response);
      }else {
          userDao.doimk(userid,s);
          response.sendRedirect("login.jsp");
      }



    }
}
