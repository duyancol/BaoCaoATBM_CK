<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/8/2022
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <link rel="stylesheet" href="css/comment.css">
    <link rel="stylesheet" href="css/listComment.css">
    <title>Title</title>
</head>
<body>


    <div id="reader" >
        <c:forEach items="${listComment}" var="m">
        <ol style="width: 60%">
            <li>

                <div class="comment_box cs"> <a href="#"> <img src="https://th.bing.com/th/id/OIP.e1KNYwnuhNwNj7_-98yTRwHaF7?w=255&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7" alt="avatar"> </a>
                    <div class="inside_comment">
                        <div class="comment-meta">
                            <div class="commentsuser">${m.username} ${m.commentid} </div>
                            <div class="comment_date">December 1, 2012 at 1:32 am</div>
                        </div>
                    </div>
                    <div class="comment-body">
                        <p>${m.content}</p>
                    </div>

                    <div class="reply"> <a href="#" onclick="recomment('${m.commentid}')">Reply</a> </div>
                    <form  method="post" class="reform" name="reform" style="background: rgba(87,184,70,0.17);padding: 20px;border-bottom-left-radius: 20px">
                        <div class="commentfields">
                            <label class="name">Name <span>*</span></label>
                            <input name="reusername"  class="comment-input required" type="text" >
                        </div>

                        <div class="commentfields">
                            <label>Comments <span>*</span></label>
                            <textarea  class="comment-textarea required" name="recontent"></textarea>
                        </div>
                        <div class="commentfields">
                            <input style="border-bottom-left-radius: 7px" class="commentbtn" type="button" value="send" onclick="showAlert('${m.commentid}','${m.id}'),recomment('${m.commentid}')"  >
                        </div>
                    </form>
                    <br>


                    <div> <button onclick="showAlert('${m.commentid}','${m.id}')"> >> </button></div>
                    <div class="arrow-down"></div>
                </div>



                <ul class="children" >
                    <li>
                        <!--Comment Box 2-->
            <c:forEach items="${listRequestComment}" var="o">
                <c:if test="${m.commentid==o.commentid}">
                    <div class="comment_box" style="background: rgb(200, 175, 12,0.2);width: 160%">  <a href="#"> <img src="https://th.bing.com/th/id/OIP.e1KNYwnuhNwNj7_-98yTRwHaF7?w=255&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7" alt="avatar" > </a>
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
<%--                    <div id="myrecomment" class="tongbl">--%>

<%--                    </div>--%>

                </c:if>

            </c:forEach>
                    </li>
                </ul>
            </li>
        </ol>


        </c:forEach>
    </div>



</body>
</html>
