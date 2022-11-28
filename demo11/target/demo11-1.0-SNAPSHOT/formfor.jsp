<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 7/5/2022
  Time: 4:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%
    String error = (String) request.getAttribute("mess");
%>
<%
    String messnot = (String) request.getAttribute("messnot");
%>
<%
    String messerror = (String) request.getAttribute("messerror");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<%--<form action="Emailcontroller" method="post">--%>

<%--    <input type="text" name="userid">--%>
<%--    <input type="text" name="email">--%>
<%--    <input type="submit" value="post">--%>

<%--</form>--%>
<div style="background: #f1ebed">
  <section id="repass1">
      <form action="Emailcontroller" method="post" style="width: 500px; margin: auto;padding-top:60px " >
          <%
              if (messnot != null) {
          %>
          <div style="color: red;font-size: 20px" >
              <%= messnot%>
          </div>
          <%

              }
          %>
          <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">User name :</label>
              <input name="userid" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
          </div>
          <div class="mb-3">
              <label for="exampleInputPassword1" class="form-label">Email :</label>
              <input name="email" type="email" class="form-control" id="exampleInputPassword1">
          </div>

          <button type="submit" class="btn btn-primary">Submit</button>
      </form>
  </section>
<%--    <form action="kichhoat" method="post">--%>
<%--        <%--%>
<%--            if (error != null) {--%>
<%--        %>--%>
<%--        <div style="color: red;font-size: 16px" >--%>
<%--            <%= error%>--%>
<%--        </div>--%>
<%--        <%--%>

<%--            }--%>
<%--        %>--%>
<%--        <div>${list.repss}</div>--%>
<%--        <input type="text" name="ma">--%>
<%--        <input type="text" value="${list.username}" name="userid">--%>
<%--        <input type="text" value="${list.email}" name="email">--%>
<%--        <input type="submit" value="post">--%>

<%--    </form>--%>
    <section id="repass2">
        <form action="kichhoat" method="post" style="width: 500px; margin: auto;padding-top:100px " >
            <%
                if (error != null) {
            %>
            <div style="color: green;font-size: 20px" >
                <%= error%>
            </div>
            <%

                }
            %>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Activation code :</label>
                <input name="ma" type="text" class="form-control"  aria-describedby="emailHelp">
                <div  class="form-text">We'll never share your email with anyone else.</div>
                <input style="display: none" type="text" value="${list.username}" name="userid">
                <input style="display: none" type="text" value="${list.email}" name="email">
            </div>


            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </section>
<%--    <form action="doimkControler" method="post">--%>

<%--        <input type="text" name="pass">--%>
<%--        <input type="text" value="${list1.username}" name="userid">--%>

<%--        <input type="submit" value="post">--%>

<%--    </form>--%>
    <form action="doimkControler" method="post" style="width: 500px; margin: auto;padding-top:100px " >
        <%
            if (messerror != null) {
        %>
        <div style="color: red;font-size: 20px" >
            <%= messerror%>
        </div>
        <%

            }
        %>
        <div class="mb-3">
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password :</label>
                <input type="password" class="form-control" name="pass">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Repassword :</label>
                <input type="password" class="form-control" name="repass">
            </div>
                    <input style="display: none" type="text" value="${list1.username}" name="userid">
        </div>


        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>


</body>
</html>
