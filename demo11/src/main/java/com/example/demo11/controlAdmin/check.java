package com.example.demo11.controlAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import com.example.demo11.ChuKiDienTu.xacthuc;
import com.example.demo11.ChuKiDienTu.MD5_SHA;
import com.example.demo11.dao.UserDao;
import com.example.demo11.dao.userkeyDao;
@WebServlet(name = "check", value = "/check")
public class check extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path =request.getParameter("path");
        String duongdan = "target\\demo11-1.0-SNAPSHOT\\file\\HoaDon"+path+"daky.pdf";


        String idoser = request.getParameter("id");
        String username = request.getParameter("username");
        xacthuc xt = new xacthuc();
        MD5_SHA  hash = MD5_SHA.getInstance(MD5_SHA.MD5);

        String thongtin =xt.name("http://localhost:8080/demo11/file/HoaDon"+path+"daky.pdf");
        String checkvalue =xt.checkvalue("http://localhost:8080/demo11/file/HoaDon"+path+"daky.pdf");
        String thoigian =xt.thoigian("http://localhost:8080/demo11/file/HoaDon"+path+"daky.pdf");
        String key =xt.key("http://localhost:8080/demo11/file/HoaDon"+path+"daky.pdf");
        String al =xt.al("http://localhost:8080/demo11/file/HoaDon"+path+"daky.pdf");
        String has=hash.hash(key);

        UserDao userDao = new UserDao();
        userkeyDao dao = new userkeyDao();
       String id= String.valueOf(userDao.getUserByUserName(username).getId());
      String pub= dao.getKey(id).get(dao.getKey(id).size()-1).getPublickey();

        String[] txt1 = checkvalue.split(" ");
        String a1 = txt1[2];

      if(pub.equals(has)&& a1.equals("1")){
          request.setAttribute("xacthuc", "Hợp lệ");
      }else {
          request.setAttribute("xacthuc", "Không hợp lệ");
      }



//        String text =thongtin.replaceAll("OU=", "");
//        String text1 =text.replaceAll("C=", "");
//        String text2 =text1.replaceAll("CN=", "");
//        String text3 =text2.replaceAll("O=", "");
//        //String text1 =text.replaceAll("}", "");
//
//        String Txt4=text3.substring(1,text3.length()-1);
//        String[] txt = Txt4.split(",");
//        String a = txt[2];
//        String b = txt[3];
//
//        String hoten =a;
//        String diachi=b;
//        request.setAttribute("xacthuc", username);
        request.setAttribute("path", path);
        request.setAttribute("thongtin", thongtin);
        request.setAttribute("check", checkvalue);
        request.setAttribute("thoigian", thoigian);
        request.setAttribute("key", has);
        request.setAttribute("al", al);
        request.getRequestDispatcher("admin_web/viewodercustomer.jsp").forward(request,response);
    }


}
