package com.example.demo11.Controller;
import com.example.demo11.Sevice.UserService;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/doRegister")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String repassword = request.getParameter("repassword");
        if(UserService.getInstance().checkUserLogin(username) == null ){
//            if (UserService.getInstance().register(username, password, email, phone) && !password.equals("")  ) {
//                response.sendRedirect("login.jsp");
            if(password.equals(repassword)) {


                if (password.length() >= 8) {
                    if (UserService.getInstance().register(username, password, email, phone)) {
                        response.sendRedirect("login.jsp");
                    } else {
                        request.getRequestDispatcher("register.jsp").forward(request, response);
                    }

                } else {
                    request.setAttribute("checkpass", "Phai lon hon 8 ki tu");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }

            }else {
                request.setAttribute("checkpass", "Khong khop");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }



        }else {
            request.setAttribute("checkuser", "Username ton tai");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }



   }
}
