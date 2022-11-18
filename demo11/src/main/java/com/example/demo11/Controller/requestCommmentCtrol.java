package com.example.demo11.Controller;

import com.example.demo11.Sevice.CommentService;
import com.example.demo11.Sevice.RequestCommentSevlet;
import com.example.demo11.model.Comment;
import com.example.demo11.model.Requestcomment;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "requestCommmentCtrol", value = "/requestCommmentCtrol")
public class requestCommmentCtrol extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getCharacterEncoding()!=null){
            request.setCharacterEncoding("UTF-8");
        }

        String commentid=request.getParameter("commentid");
        String content =request.getParameter("content");
        String id = request.getParameter("id");
        String username = request.getParameter("username");

    List<Requestcomment> listrecomment= RequestCommentSevlet.getInstance().getRequestdentailComment(commentid);
    request.setAttribute("listRequestComment",listrecomment);






        RequestDispatcher rd=request.getRequestDispatcher("DisplayReComment.jsp");

        rd.forward(request,response);



    }
}
