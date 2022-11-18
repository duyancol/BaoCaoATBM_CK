<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/11/2022
  Time: 5:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
                    <div class="comment_box"> <a href="#"> <img src="avatar.jpg" alt="avatar"> </a>
                        <div class="inside_comment">
                            <div class="comment-meta">
                                <div class="commentsuser">${o.reusername}</div>
                                <div class="comment_date">December 1, 2012 at 1:32 am</div>
                            </div>
                        </div>
                        <div class="comment-body">
                            <p>${o.recontent}</p>
                        </div>
                        <div class="reply"> <a href="#">Reply</a> </div>
                        <div class="arrow-down"></div>
                    </div>
</body>
</html>
