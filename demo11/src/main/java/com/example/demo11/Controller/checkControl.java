package com.example.demo11.Controller;

import com.example.demo11.dao.OrderDao;
import com.example.demo11.model.Cart;
import com.example.demo11.model.Email;
import com.example.demo11.model.EmailUntilt;
import com.example.demo11.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "checkControl", value = "/checkControl")
public class checkControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String user_id = request.getParameter("user_id");
        String adress = request.getParameter("adress");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String product = request.getParameter("listoder");
        String user = request.getParameter("username");


        HttpSession  session =request.getSession();
if(session.getAttribute("auth")==null){
    response.sendRedirect("login.jsp");
    return;
}
if (session.getAttribute("cart")==null){
    response.sendRedirect("cart");
    return;
}
boolean result= OrderDao.getInstance().createOder((User) session.getAttribute("auth"), (Cart) session.getAttribute("cart"),adress,phone);
session.removeAttribute("cart");
if(result){
    Email email1 = new Email();
    email1.setFrom("nguyenduy.30719@gmail.com");
    email1.setFromPss("hwtuiyfvalxmlzxg");
    email1.setTo(email);
    email1.setSubject("The order you have placed :");
    StringBuilder sb= new StringBuilder();
      sb.append("Cảm ơn bạn đã ủng hộ shop của chúng tôi").append("<br>");
      sb.append("Thông tin hóa đơn :").append("<br>");
      sb.append("-" + "  "+"Tên khách hàng : "+user).append("<br>");
      sb.append("-" + "  "+"Địa chỉ : "+adress).append("<br>");
      sb.append("-" + "  "+"Số điện thoại : "+"0377155498").append("<br>");
      sb.append("-" + "  "+product).append("<br>");
      sb.append("-" +"  "+ "Đơn hàng của bạn sẽ đươc giao trong vài ngày tới. Mong bạn hãy giữ thông tin liên lạc . ").append("<br>");
      sb.append("-" + "  "+"Xin cảm ơn ! ").append("<br>");
    email1.setContent(sb.toString());
    try {
        EmailUntilt.send(email1);
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
    response.sendRedirect("Load8product");

}
else response.sendRedirect("cart1.jsp");
    }
}
