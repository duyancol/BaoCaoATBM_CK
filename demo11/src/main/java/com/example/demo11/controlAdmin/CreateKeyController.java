package com.example.demo11.controlAdmin;

import com.example.demo11.ChuKiDienTu.KeyStoreJKS;
import com.example.demo11.ChuKiDienTu.MD5_SHA;
import com.example.demo11.ChuKiDienTu.Mailer;
import com.example.demo11.dao.userkeyDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.Base64;

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
        String bidanhcu = request.getParameter("bidanhcu");
        String bidanhmoi = request.getParameter("bidanhmoi");
        String ten = request.getParameter("ten");
        String diachi = request.getParameter("diachi");
        String matkhau = request.getParameter("matkhau");
        String iduser = request.getParameter("iduser");

        userkeyDao dao = new userkeyDao();
        dao.insertYeuCauKey(iduser,bidanhmoi,matkhau,diachi,ten);
        request.setAttribute("thongbao","Đã gửi yêu cầu ,xin đợi ít phút để duyệt ! Bạn cần check mail để dowload key mà chúng tôi cung cấp !");
        request.getRequestDispatcher("admin_web/test1.jsp").forward(request,response);



    }
}
