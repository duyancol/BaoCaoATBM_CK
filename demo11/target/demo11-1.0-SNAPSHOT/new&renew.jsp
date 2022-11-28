
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/15/2022
  Time: 11:50 PM
  To change this template use File | Settings | File Templates.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/main.css">
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Raleway:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<hr>

<main>
    <section class = "main-container-left" style="width: 80%;margin-left: 10%">
        <h2>Top Stories</h2>
        <div class = "container-top-left">
            <c:forEach items="${listnewtop1}" var="t">
                <article>
                    <img src = "${t.img}">

                    <div>
                        <h3>${t.tittle}</h3>

                        <p> ${t.derection}</p>

                        <a href = "#">Read More <span>>></span></a>
                    </div>
                </article>
            </c:forEach>
        </div>

        <div class = "container-bottom-left">
            <c:forEach items="${listnewtop23}" var="s">

                <article>
                    <img src = "${s.img}">
                    <div>
                        <h3>${s.tittle}</h3>
                        <p>${s.derection}</p>

                        <a href = "#">Read More <span>>></span></a>
                    </div>
                </article>
            </c:forEach>

        </div>
    </section>

    <section class = "main-container-right">
        <h2>Latest Stories</h2>
        <c:forEach items="${listnew}" var="n">
            <article>
                <h4>just in </h4>
                <div>
                    <h2>${n.tittle}</h2>

                    <p>${n.derection}</p>

                    <a href = "#">Read More <span>>></span></a>
                </div>
                <img src = "${n.img}">
            </article>
        </c:forEach>


    </section>
</main>
<jsp:include page="fooder.jsp"></jsp:include>

<script src="js/news.js" async defer></script>
</body>
</html>
