package com.example.demo11.controlAdmin;

import com.example.demo11.Sevice.CommentService;
import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.Sevice.RequestCommentSevlet;
import com.example.demo11.dao.ADMINCOMENT;
import com.example.demo11.dao.CommentDao;
import com.example.demo11.dao.DMSPDAO;
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

    private ADMINCOMENT dmspdao;
    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

        dmspdao = new ADMINCOMENT(jdbcURL, jdbcUsername, jdbcPassword);

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getCharacterEncoding()!=null){
            request.setCharacterEncoding("UTF-8");
        }

        String commentid = request.getParameter("commentid");


        try {

            List<Comment> com =dmspdao.listAllDM();
            List<Requestcomment> re =RequestCommentSevlet.getInstance().getRequestdentailComment(commentid);

            request.setAttribute("listComment",com);
            request.setAttribute("listRequestComment",re);
            request.getRequestDispatcher("admin_web/recomentadmin.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
