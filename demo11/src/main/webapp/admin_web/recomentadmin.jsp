<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/14/2022
  Time: 2:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="reader">
    <c:forEach items="${listComment}" var="m">
        <ol>
            <li>



                <div class="comment_box cs" style="width: 200%">
                    <a href="PDDetailsServlet?id=${m.product.id}">
                        <img src="${m.product.img}">
                    </a>

                    <div>Name: "${m.product.name}"      ID:"${m.product.id}"</div>
                    <a href="#"> <img src="https://th.bing.com/th/id/OIP.e1KNYwnuhNwNj7_-98yTRwHaF7?w=255&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7" alt="avatar"> </a>
                    <div class="inside_comment">
                        <div class="comment-meta">
                            <div class="commentsuser">${m.username} </div>
                            <div class="comment_date">December 1, 2012 at 1:32 am</div>
                        </div>
                    </div>
                    <div class="comment-body">
                        <p>${m.content}</p>
                    </div>
                    <div class="reply"> <a href="#">Reply</a> </div>
                    <div> <button onclick="showAlert('${m.commentid}','${m.id}')">BL</button></div>
                    <div class="arrow-down"></div>
                </div>



                <ul class="children">
                    <li>
                        <!--Comment Box 2-->
                        <c:forEach items="${listRequestComment}" var="o">
                            <c:if test="${m.commentid==o.commentid}">
                                <div class="comment_box" style="width: 350px"> <a href="#"> <img src="https://th.bing.com/th/id/OIP.e1KNYwnuhNwNj7_-98yTRwHaF7?w=255&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7" alt="avatar"> </a>
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
