package com.example.demo11.controlAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.Base64;

import com.example.demo11.ChuKiDienTu.MD5_SHA;
import com.example.demo11.dao.userkeyDao;
import com.example.demo11.ChuKiDienTu.Mailer;
import com.example.demo11.ChuKiDienTu.KeyStoreJKS;
@WebServlet(name = "DuyetKeyTheoYeuCau", value = "/DuyetKeyTheoYeuCau")
public class DuyetKeyTheoYeuCau extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String iduser=request.getParameter("userid");

        String name="keyStore"+iduser+".p12";
        String path=getServletContext().getRealPath("/" + "file" + File.separator + name);
        String bidanh=request.getParameter("bidanh");
        String mk=request.getParameter("matkhau");
        String remk=request.getParameter("repassword");
        String tinhtp=request.getParameter("diachi");
        String diachi="Long An";

        String ten =request.getParameter("ten");

        try {
            // kiểm tra ping google.com (gửi 5 gói tin)
            ProcessBuilder builder = new ProcessBuilder("cmd.exe", "/c", "keytool -genkeypair -keyalg RSA -keysize 2048 -keystore \""+path+"\" -alias "+bidanh+" -dname \"CN="+ten+",OU="+tinhtp+",O="+tinhtp+",C="+diachi+"\" -storepass "+mk+" -keypass "+mk+" -validity 90");
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
            userkeyDao dao = new userkeyDao();
            KeyStoreJKS keyStoreJKS = new KeyStoreJKS();
            MD5_SHA hash = MD5_SHA.getInstance(MD5_SHA.MD5);


            String key=	Base64.getEncoder().encodeToString( keyStoreJKS.getPublickeyFromKeyStore(path,bidanh,mk).getEncoded());

            dao.updateYeuCauKey(iduser,path,hash.hash(key));
try {
    Mailer mailer = new Mailer();
    mailer.send("19130057@st.hcmuaf.edu.vn","Shop  (Create key)","","D:\\Users\\HP\\demo11\\target\\demo11-1.0-SNAPSHOT\\file\\",name);
    request.setAttribute("baoloi","Đã duyệt thành công !");
}catch (Exception e){
    request.setAttribute("baoloi","Lỗi !");
}

//            response.sendRedirect("admin_web/listUser.jsp");
            request.getRequestDispatcher("admin_web/listUser.jsp").forward(request,response);

        } catch (IOException ex) {
            System.out.println("loi Ping: " + ex.toString());
        } catch (UnrecoverableKeyException e) {
            throw new RuntimeException(e);
        } catch (CertificateException e) {
            throw new RuntimeException(e);
        } catch (KeyStoreException e) {
            throw new RuntimeException(e);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }


    }
}
