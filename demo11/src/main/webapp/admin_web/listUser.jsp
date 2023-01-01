<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/14/2022
  Time: 1:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%
    String baoloi = (String) request.getAttribute("baoloi");



%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="admin.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/manager.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="css/comment.css">
<link rel="stylesheet" href="css/listComment.css">

<style>
    img{
        width:80px;
        height: 80px;
    }
</style>
</head>
<body>

<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxl-c-plus-plus'></i>
        <span class="logo_name">CodingLab</span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="Dashboard" class="active">
                <i class='bx bx-grid-alt' ></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="Servlet3">
                <i class='bx bx-box' ></i>
                <span class="links_name">Product</span>
            </a>
        </li>
        <li>
            <a href="OrderAdminControl">
                <i class='bx bx-list-ul' ></i>
                <span class="links_name">Order list</span>
            </a>
        </li>
        <li>
            <a href="tktn">
                <i class='bx bx-pie-chart-alt-2' ></i>
                <span class="links_name">Analytics</span>
            </a>
        </li>
        <li>
            <a href="Newadmin">
                <i class='bx bx-coin-stack' ></i>
                <span class="links_name">News</span>
            </a>
        </li>
        <li>
            <a href="trademarksAD">
                <i class='bx bx-book-alt' ></i>
                <span class="links_name">Trademark</span>
            </a>
        </li>
        <li>
            <a href="Userkey">
                <i class='bx bx-user' ></i>
                <span class="links_name">Team</span>
            </a>
        </li>
        <li>
            <a href="Product_Admin">
                <i class='bx bx-message' ></i>
                <span class="links_name">Messages</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-heart' ></i>
                <span class="links_name">Favrorites</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-cog' ></i>
                <span class="links_name">Setting</span>
            </a>
        </li>
        <li class="log_out">
            <a href="#">
                <i class='bx bx-log-out'></i>
                <span class="links_name">Log out</span>
            </a>
        </li>
    </ul>
</div>
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Dashboard</span>
        </div>
        <div class="search-box">
            <input type="text" placeholder="Search...">
            <i class='bx bx-search' ></i>
        </div>
        <div class="profile-details">
            <img src="https://th.bing.com/th/id/OIP.e1KNYwnuhNwNj7_-98yTRwHaF7?w=255&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7" alt="">
            <span class="admin_name">Prem Shahi</span>
            <i class='bx bx-chevron-down' ></i>
        </div>
    </nav>

    <div class="home-content" >

        <div class="sales-boxes">
            <div class="recent-sales box" style="width: 100%">

                <div class="sales-details">
                    <section>
                        <input class="input" type="radio" name="box" id="box3"  value="post" onclick="commentL('${m.commentid}')" >
                        <div class="rt-container">
                            <div class="col-rt-12">

                                <div class="content">
                                    <%
                                        if (baoloi != null) {
                                    %>
                                    <div style="padding: 20px 40px;border: #4CAF50 solid 2px;border-radius: 20px">
                                        <h2 style="font-weight: bold;color: #31b131"><%=baoloi%></h2>
                                    </div>
                                    <%

                                        }
                                    %>


                                    <h2 class="mytext">(${ttcom}) Readers Comments </h2>

                                    <div id="recomment" class="tongbl">



                                    </div>
                                    <div id="respond">
                                        <h3>Leave A Response</h3>
                                        <p>Your email address will not be published with your comments.</p>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>


                </div>

            </div>

        </div>
    </div>
</section>
<script src="js/manager.js" type="text/javascript"></script>
<script>
    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".sidebarBtn");
    sidebarBtn.onclick = function() {
        sidebar.classList.toggle("active");
        if(sidebar.classList.contains("active")){
            sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
        }else
            sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
    }
    function commentL(userid){
        var xhttp;


        var t=2;
        var amount = document.getElementsByClassName("layid");
        var url ="listUser?userid="+userid;
        if(window.XMLHttpRequest){
            xhttp= new XMLHttpRequest();
        }else{
            xhttp= new ActiveXObject("Microsoft.XMLHTTP")
        }
        xhttp.onreadystatechange=function ()
        {
            if (xhttp.readyState==4){
                var data =xhttp.responseText;
                document.getElementById("recomment").innerHTML=data;
            }

        }
        xhttp.open("POST",url,true);
        xhttp.send();
    }
    function showAlert(commentid) {
        // var message = "Đây là cảnh báo!"+commentid+id;
        // alert(message);
        var xhttp;

        var url ="listUser?commentid="+commentid;
        if(window.XMLHttpRequest){
            xhttp= new XMLHttpRequest();
        }else{
            xhttp= new ActiveXObject("Microsoft.XMLHTTP")
        }
        xhttp.onreadystatechange=function ()
        {
            if (xhttp.readyState==4){
                var data =xhttp.responseText;
                document.getElementById("recomment").innerHTML=data;
            }

        }
        xhttp.open("POST",url,true);
        xhttp.send();
    }

</script>


</body>
</html>
