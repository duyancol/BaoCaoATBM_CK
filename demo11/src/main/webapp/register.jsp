<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 09/04/2022
  Time: 10:20 CH
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String error = (String) request.getAttribute("error");
%>
<%
    String checkuser = (String) request.getAttribute("checkuser");
%>
<%
    String checkpass = (String) request.getAttribute("checkpass");
%>
<html>
<head>
    <title>Title</title>
</head>
<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<!--===============================================================================================-->


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-login100">
    <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
        <form class="login100-form validate-form" action="/demo11/doRegister" method="post">
            <%
                if (error != null) {
            %>
            <div style="color: red;font-size: 16px"><%= error%>
            </div>
            <%

                }
            %>
            <%
                if (checkuser != null) {
            %>
            <div style="color: red;font-size: 16px"><%= checkuser%>
            </div>
            <%

                }
            %>
            <%
                if (checkpass != null) {
            %>
            <div style="color: red;font-size: 16px"><%= checkpass%>
            </div>
            <%

                }
            %>

            <span class="login100-form-title p-b-37">
					Register
				</span>


            <div class="wrap-input100 validate-input m-b-20" data-validate="Enter username or email">
                <input class="input100" type="text" name="username"<%
                    if(request.getParameter("username")!=null){
                %> value="<%= request.getParameter("username") %>" <%
                    }
                %>placeholder="username or email">
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                <input class="input100" type="password" name="password" placeholder="password">

                <span class="focus-input100"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                <input class="input100" type="password" name="repassword" placeholder="repassword">

                <span class="focus-input100"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-25" data-validate="Enter email">
                <input class="input100" type="email" name="email" placeholder="email">
                <span class="focus-input100"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-25" data-validate="Enter phone">
                <input class="input100" type="phone" name="phone" placeholder="phone">
                <span class="focus-input100"></span>
            </div>

            <div class="container-login100-form-btn">
                <button class="login100-form-btn">
                    Sign In
                </button>
            </div>





            <div class="text-center">
                <a href="login.jsp" class="txt2 hov1">
                    Sign In
                </a>
            </div>
        </form>


    </div>
</div>


<div id="dropDownSelect1"></div>
<jsp:include page="fooder.jsp"></jsp:include>
</body>
</html>