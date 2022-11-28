<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 7/5/2022
  Time: 4:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="Emailcontroller" method="post">
<%--    <table border="0" width="35%" align="center">--%>
<%--        <caption><h2>Send New E-mail</h2></caption>--%>
<%--        <tr>--%>
<%--            <td width="50%">Recipient address </td>--%>
<%--            <td><input type="text" name="recipient" size="50"/></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>Subject </td>--%>
<%--            <td><input type="text" name="subject" size="50"/></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>Content </td>--%>
<%--            <td><textarea rows="10" cols="39" name="content"></textarea> </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td colspan="2" align="center"><input type="submit" value="Send"/></td>--%>
<%--        </tr>--%>
<%--    </table>--%>
    <input type="text" name="userid">
    <input type="text" name="email">
    <input type="submit" value="post">

</form>
<form action="kichhoat" method="post">
<div>${list.repss}</div>
    <input type="text" name="ma">
    <input type="text" value="${list.username}" name="userid">
    <input type="text" value="${list.email}" name="email">
    <input type="submit" value="post">

</form>
<form action="doimkControler" method="post">

    <input type="text" name="pass">
    <input type="text" value="${list1.username}" name="userid">

    <input type="submit" value="post">

</form>
<jsp:include page="header.jsp"></jsp:include>
<!-- Main Content -->

<div class="container-login100" >
    <section id="sectionLogin">

        <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
            <form class="login100-form validate-form" action="/demo11/doLogin" method="post">
<%--                <%--%>
<%--                    if (error != null) {--%>
<%--                %>--%>
<%--                <div style="color: red;font-size: 16px" >--%>
<%--                    <%= error%>--%>
<%--                </div>--%>
<%--                <%--%>

<%--                    }--%>
<%--                %>--%>

                <span class="login100-form-title p-b-37">
					Sign In
				</span>


                <div class="wrap-input100 validate-input m-b-25" data-validate="Enter username or email">

                    <input  class="input100" type="text" name="username"
                            value="<%= request.getParameter("username")!=null?request.getParameter("username"):"" %>"

                            placeholder="username">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                    <div>
                        <input class="input100" type="password" name="password" placeholder="password">
                        <div id="eye" style="padding: 20px">
                            <i class="fas fa-eye"></i>
                        </div>
                    </div>
                    <%--                <span class="focus-input100"></span>--%>

                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Sign In
                    </button>
                </div>





                <div class="text-center">
                    <a href="register.jsp" class="txt2 hov1">
                        Sign Up
                    </a>
                </div>
            </form>


        </div>
    </section>
</div>


<div id="dropDownSelect1"></div>
<jsp:include page="fooder.jsp"></jsp:include>
</body>
</html>
