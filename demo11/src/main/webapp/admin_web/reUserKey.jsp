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
<%--          <a href="PDDetailsServlet?id=${m.product.id}">--%>
<%--            <img src="${m.id}">--%>
<%--          </a>--%>

          <div>Name: "${m.username}"      </div>
          <a href="#"> <img src="https://th.bing.com/th/id/OIP.e1KNYwnuhNwNj7_-98yTRwHaF7?w=255&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7" alt="avatar"> </a>
          <div class="inside_comment">
            <div class="comment-meta">
<%--              <div class="commentsuser">${m.username} </div>--%>
              <div class="comment_date"></div>
            </div>
          </div>
          <div class="comment-body">
<%--            <p>${m.content}</p>--%>
          </div>
<%--          <div class="reply"> <a href="#">Reply</a> </div>--%>
          <div> <button onclick="showAlert('${m.id}')" style="border-radius: 5px;border: none;color: white;background: #6d6d6d;padding: 5px">show</button></div>
          <div class="arrow-down"></div>
        </div>



        <ul class="children">
          <li>
            <!--Comment Box 2-->
            <c:forEach items="${listRequestComment}" var="o">
              <c:if test="${m.id==o.iduser}">
                <div class="comment_box" style="width: 350px"> <a href="#"> <img src="https://media.istockphoto.com/id/1216212342/vi/vec-to/bi%E1%BB%83u-t%C6%B0%E1%BB%A3ng-y%C3%AAu-c%E1%BA%A7u.jpg?s=612x612&w=is&k=20&c=VUqXE1vBdmEAhtP1zjOuhfGogGGEzO57cXRzI_2ZxHA=" alt="avatar"> </a>
                  <div class="inside_comment">
                    <div class="comment-meta">
                      <div class="commentsuser">Create key !</div>
                      <div class="comment_date">December 1, 2022 at 1:32 am</div>
                    </div>
                  </div>
                  <div class="comment-body">

                  </div>
                  <form action="DuyetKeyTheoYeuCau" method="post">
                    <input style="display: none" name="bidanh" value="${o.bidanh}">
                    <input style="display: none" name="matkhau" value="${o.matkhaukey}">
                    <input style="display: none" name="diachi" value="${o.diachi}">
                    <input style="display: none" name="ten" value="${o.tendaydu}">
                    <input style="display: none" name="userid" value="${o.id}">
              <c:if test="${o.tinhtrang==0.0}">
                <div style="border: #b19c31 solid 2px;border-radius: 5px;font-weight: bold;color: #b19c31;font-size: 16px;width: 140px;margin-left: 60px">Chưa phê duyệt</div>

                <input style="padding: 5px 20px;background: rgba(213,232,12,0.75);border: none;border-radius: 5px;color: white;font-weight: bold;float: right;clear: left" class="reply" value="Duyệt" type="submit">
              </c:if>
                    <c:if test="${o.tinhtrang==1.0}">
                      <div style="border: #31b131 solid 2px;border-radius: 5px;font-weight: bold;color: #31b131;font-size: 16px;width: 140px;margin-left: 60px">Đã phê duyệt</div>

                    </c:if>

                  </form>
<%--                  <div class="reply"> <a href="#">Duyet</a> </div>--%>

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
