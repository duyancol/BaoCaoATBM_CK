<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 09/04/2022
  Time: 8:46 CH
  To change this template use File | Settings | File Templates.
--%>

<%
    String error = (String) request.getAttribute("error");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <!--===============================================================================================-->
<%--    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>--%>
<%--    <!--===============================================================================================-->--%>
<%--    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">--%>
<%--    <!--===============================================================================================-->--%>
<%--    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">--%>
<%--    <!--===============================================================================================-->--%>
<%--    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">--%>
<%--    <!--===============================================================================================-->--%>
<%--    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">--%>
<%--    <!--===============================================================================================-->--%>
<%--    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">--%>
<%--    <!--===============================================================================================-->--%>
<%--    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">--%>
<%--    <!--===============================================================================================-->--%>
<%--    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">--%>
<%--    <!--===============================================================================================-->--%>
<%--    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">--%>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/login.css">
<%--    <link rel="stylesheet" type="text/css" href="css/main.css">--%>
    <!--===============================================================================================-->


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        nav .navbar .links{
            margin-top: 0px;
        }

    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Main Content -->

<div class="container-login100" >
    <section id="sectionLogin">

    <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
        <form class="login100-form validate-form" action="/demo11/doLogin" method="post">
            <%
                if (error != null) {
            %>
            <div style="color: red;font-size: 16px" >
                <%= error%>
            </div>
            <%

                }
            %>

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





            <div class="text-center" style="margin: 20px;">
                <a href="register.jsp" class="txt2 hov1">
                    Sign Up
                </a>
            </div>
            <div class="text-center" style="margin: 20px;">
                <a href="forestcontrol" class="txt2 hov1" style="color:#0048ff">
                    Forgot password
                </a>
            </div>
        </form>


    </div>
    </section>
</div>


<div id="dropDownSelect1"></div>
<jsp:include page="fooder.jsp"></jsp:include>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
    $(document).ready(function (){
        $('#eye').click(function (){
            $(this).toggleClass('open')
            $(this).children('i').toggleClass('fa-eye-slash fa-eye')
            if($(this).hasClass('open')){

                $(this).prev().attr('type','text')
            }
        })
    })
</script>
</html>