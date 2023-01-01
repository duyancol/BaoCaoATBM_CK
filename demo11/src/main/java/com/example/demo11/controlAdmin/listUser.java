package com.example.demo11.controlAdmin;

import com.example.demo11.dao.UserDao;
import com.example.demo11.model.User;
import com.example.demo11.dao.userkeyDao;
import com.example.demo11.model.UserKey;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "listUser", value = "/listUser")
public class listUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commentid = request.getParameter("commentid");
        UserDao userDao = new UserDao();
        userkeyDao userkeyDao = new userkeyDao();
        List<User> com =userDao.getAllUser();
        List<UserKey> re = userkeyDao.getPDMSP(commentid);
        request.setAttribute("listComment",com);
        request.setAttribute("listRequestComment",re);
        request.getRequestDispatcher("admin_web/reUserKey.jsp").forward(request,response);
    }
}
