package com.example.demo11.Controller;

//import com.example.demo11.dao.CommentDao;
//import com.example.demo11.dao.TLCommentDao;
//import com.example.demo11.model.Comment;
//import com.example.demo11.model.TLComment;

import com.example.demo11.Sevice.RequestCommentSevlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TLCommentControler", value = "/TLCommentControler")
public class TLCommentControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String content =request.getParameter("content");

        String username = request.getParameter("username");
        String commentid=request.getParameter("commentid");
        RequestCommentSevlet.getInstance().InsertRequestComment(commentid,content,username);
        RequestDispatcher rd=request.getRequestDispatcher("DisplayComment.jsp");

        rd.forward(request,response);
    }
}
