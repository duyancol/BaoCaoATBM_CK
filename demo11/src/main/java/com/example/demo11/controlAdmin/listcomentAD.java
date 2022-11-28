package com.example.demo11.controlAdmin;

import com.example.demo11.Sevice.CommentService;
import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.Sevice.RequestCommentSevlet;
import com.example.demo11.dao.ADMINCOMENT;
import com.example.demo11.dao.CommentDao;
import com.example.demo11.dao.admincmdao;
import com.example.demo11.model.Comment;
import com.example.demo11.model.Product;
import com.example.demo11.model.Requestcomment;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "listcomentAD", value = "/listcomentAD")
public class listcomentAD extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getCharacterEncoding()!=null){
            request.setCharacterEncoding("UTF-8");
        }
        admincmdao dao = new admincmdao();


        String commentid = request.getParameter("commentid");




            List<Comment> com =dao.getAllOrder();
            List<Requestcomment> re =RequestCommentSevlet.getInstance().getRequestdentailComment(commentid);

            request.setAttribute("listComment",com);
            request.setAttribute("listRequestComment",re);
            request.getRequestDispatcher("admin_web/recomentadmin.jsp").forward(request,response);



    }
}
