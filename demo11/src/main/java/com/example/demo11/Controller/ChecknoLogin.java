package com.example.demo11.Controller;

import com.example.demo11.dao.OrderDao;
import com.example.demo11.model.Cart;
import com.example.demo11.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChecknoLogin", value = "/ChecknoLogin")
public class ChecknoLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_id = request.getParameter("user_id");
        String adress = request.getParameter("adress");
        String phone = request.getParameter("phone");

        HttpSession  session =request.getSession();
//        if(session.getAttribute("auth")==null){
//            response.sendRedirect("login.jsp");
//            return;
//        }
        if (session.getAttribute("cart")==null){
            response.sendRedirect("cart");
            return;
        }
        boolean result= OrderDao.getInstance().createOdernologin((User) session.getAttribute("auth"), (Cart) session.getAttribute("cart"),user_id,adress,phone);
        session.removeAttribute("cart");
        if(result) response.sendRedirect("Load8product");
        else response.sendRedirect("cart1.jsp");
    }
}
