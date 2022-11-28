
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.google.gson.Gson" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 07/04/2022
  Time: 3:05 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
    </script>
    <link href="https://unpkg.com/boxicons@2.1.0/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="css/style_product.css">
    <link rel="stylesheet" href="">
    <link rel="stylesheet" href="cart/css/style.css">
    <link rel="stylesheet" href="css/repoint.css">
    <link rel="stylesheet" href="css/cssfile.css">
    <link rel="stylesheet" href="css/profile.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" >
</head>

<%--<body>--%>
<%--<div class="paging">--%>
<%--    <c:forEach begin="1" end="${end}" var="i">--%>
<%--        <a href="#">${i}</a>--%>

<%--    </c:forEach>--%>

<%--</div>--%>

<%--<div class="search">--%>
<%--    <c:forEach items="${list}"  var="o">--%>
<%--        <a href="#">${o.name}</a>--%>

<%--    </c:forEach>--%>
<%--    <div class="paging">--%>
<%--        <c:forEach begin="1" end="${end}" var="i">--%>
<%--            <a href="SearchControl?index=${i}&txtSearch=${txt}">${i}</a>--%>

<%--        </c:forEach>--%>

<%--    </div>--%>

<%--</div>--%>


<div class="dialog overlay" id="my-dialog">
    <a href="#" class="overlay-close"></a>

    <div class="dialog-body">



        <div class="id" >

            <div class="img-container">
                <img src="${auth.avata}" style="margin-right: 190px;" alt="">
                <div class="title" style="font-size: 17px;
    font-weight: 700;
    color: #292525;">
                    <h2>${auth.username}</h2>
                </div>
            </div>
            <div class="maincontainer">
                <p><i class="infor far fa-file-signature">${auth.name}       Age: ${auth.age}</i></p>

                <p><img src="assets/icon/email.png" style="height: 20px;width: 20px;"><i class="infor">${auth.email}</i></p>
                <p><i class="infor bx bx-phone-call" style="margin-left: -4%;padding-right: 40px">          ${auth.phone}</i></p>
                <hr>
                <p><b><i class="infor"></i></b></p>
                <p>Diem tich luy</p>
                <div class="skill">
                    <div class="bar" style="width: 70%;">${auth.hide}</div>
                </div>
                <button class="btn">More</button>
                <div class="folow">fOLOW ME</div>
                <div class="soc">
                    <id class="fa"><i class="fab fa-youtube"></i></id>
                    <id class="fa"><i class="fab fa-instagram"></i></id>
                    <id class="fa"><i class="fab fa-twitter"></i></id>
                    <id class="fa"><i class="fab fa-facebook-f"></i></id>
                </div>


            </div>
        </div>
    </div>
</div>
</div>
<div id="showcart" class="list_cart" style="margin-top: 400px;margin-right: 200px;z-index: 99;background: #f0f0f0">
    <table id="cart" class=" table table-hover"  style="" >
        <thead class="thead-dark">
        <tr>
            <th>STT</th>
            <th>Hình</th>
            <th>Tên sản phẩm</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
            <th>Thành tiền ($)</th>
            <th>Xoa</th>

        </tr>
        </thead>
        <tbody   style="margin-left: -60px" >
        <c:set var="products" value="${cart.productList}"/>
        <c:forEach items="${products}" var="product">
            <tr>
                <td>1</td>
                <td><img src="${product.img}" alt=""></td>
                <td>${product.name} </td>
                <td>${product.price}</td>
                    <%--                            <td>${product.quantitySol}</td>--%>
                <td>
                    <input class="changeQuantity" pid="${product.id}" type="number" value="${product.quantitySol}">
                </td>
                <td><div class="total-product">${product.totalMoney}</div></td>

                <td><button type="button" class="btn btn-danger remove-product" pid="${product.id}"><i class="fas fa-trash-alt"></i></button></td>

            </tr>
        </c:forEach>

        </tbody>
        <tr class="cart__price thead-dark">
            <th colspan="6">Total:${cart.totalPrice}</th>
            <th>
<%--                <div class="total-cart">${cart.totalPrice} </div>--%>
                <a  href="cart" style="text-decoration: none;margin-left: 0px;">
                    <button type="button" class="btn btn-outline-success">Buy</button>
                </a>
<%--                <div class="total-cart">--%>

<%--                </div>--%>
            </th>

        </tr>

    </table>


</div>
<div class="search_cake undisplay">

<%--    <form action="SearchControl?index=1" method="post">--%>
    <form action="SearchControl?index=1#drink-menu-section" method="post">
        <input oninput="searchByName(this)" value="${txtSearch}" name="txtSearch"
               type="text" id="search_cake_query" placeholder="Enter name of PROUCT !">
        <input src="#drink-menu-section" class="searchBt" type="submit" name="btnGo" value="Go">

    </form>

</div>
<div class="header boxcenter">
    <div class="header--contact padding-content">
        <div class="header--contact__phone">

            <i class='bx bx-phone-call'style="font-size: 20px;"></i>
            call us 03-087-0976
            <img src="assets/icon/email.png" style="height: 20px;width: 20px;margin-left: 2%;margin-right: 10px;" alt="">
            nn@gmail.com
        </div>

        <div class="header--contact__">
            <a href="">
                <div class="header--contact__about" style="margin-right: 20px">
                    <img src="assets/icon/location.png" style="height: 20px; width: 20px;"  alt="">
                    <a href="https://www.google.com/maps/place/313+S+Maclay+Ave,+San+Fernando,+CA+91340,+Hoa+K%E1%BB%B3/@34.2823229,-118.4451155,17z/data=!3m1!4b1!4m5!3m4!1s0x80c2904a5eb192a1:0x73f25f3cf0de68ba!8m2!3d34.2823229!4d-118.4429268" style="position: relative; top: 1px;margin-left: 10px;">
                        location
                    </a>
                </div>
            </a>
            <a href="">
<%--                <div class="header--contact__careers">--%>
<%--                    <i class='bx bxs-note' style="font-size: 20px;"></i>--%>
<%--                    <span style="position: relative; top:-3px;margin-left: 10px;">Orders</span>--%>
<%--                </div>--%>
            </a>
            <a class="header--contact__locations"
               href="">
                <!-- <i class="fas fa-globe-americas" style="font-size: 16px;"></i> -->
<%--                class="dialog-btn" href="#my-dialog"--%>
                <a onclick="changeStyle()" href="#my-dialog" style="margin-right: 6px"><i class='bx bxs-user' style="font-size: 20px;"></i></a>
                <a href="#" class="header--contact__span" style="position: relative; top:5px;"><c:set var="auth" value="${sessionScope.auth}"/>
                    <c:if test="${auth == null}">
                        <div class="login">
                            <a href="login.jsp#sectionLogin" class="a-login">login</a>

                        </div>
                    </c:if>
                    <c:if test="${auth !=null}">
                        <p style="font-weight: bold ;margin-top: 20px">Xin Chao <br>${auth.username}</p><br>
<%--                        <a style="font-weight: bold ;font-size: 150%;color: #4CAF50;margin-top: 20px;margin-right: 20px"></a>--%>
                        <a href="logout"><i class="fas fa-sign-out-alt" style="font-size: 20px;margin-left: 20px"></i>Logout</a>
                        <c:if test="${auth.role>=1}">
                            <a href="Dashboard"><img src="assets/users-cog-solid.svg" style="font-size: 20px;margin-left: 20px"></img> ADmin</a>
                            </c:if>
                        </c:if> </a>
            </a>

        </div>
    </div>

    <div class="header--logo content-header">
        <div class="header--logo_large">
            <div class="header--logo_item">
                <a href="lienhe.html">

                    <i class='bx bx-notepad' style="font-size: 40px;color: rgb(68, 67, 67);"></i>
                </a>
            </div>
            <div class="header--logo_item">
                <a href="">

                    <i class='bx bx-globe' style="font-size: 40px;color: rgb(68, 67, 67);"></i>
                </a>
            </div>
            <div class="header--logo_logo">
                <!-- TODO : link -->
                <a href="">
                    <img src="assets/logo-dark.png" alt="">
                </a>

            </div>
            <div class="header--logo_item">
                <a id="search_icon_button">

                    <i class='bx bx-search-alt-2'style="font-size: 40px;color: rgb(68, 67, 67);" ></i>
                </a>
            </div>
            <div class="giohang header--logo_item" >
                <!-- <a href="cart/cart.html"><img src="cart/images/cart.png"></a> -->
                <a onclick="showcart()">

                    <i class='bx bxs-cart-alt'style="font-size: 40px;color: rgb(68, 67, 67);" ></i>
                    <span id="countsp" class="total-cart-gh">${cart.totalPrice1}</span>
                </a>
            </div>
        </div>
        <div class="header--logo_small">
            <a href="">
                <!-- TODO : link -->
                <img src="assets/logo-left-2.png" alt="">
            </a>
            <button class="header--button header--navbar_open_icon">
                <svg width="25px" class="svg-menu-opener" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 32 26.5" style="enable-background:new 0 0 32 26.5;" xml:space="preserve">
                        <path class="st0" d="M31.3,0.8c1.2,1.4-0.4,3.5,0.1,5.5c-0.6,0.2-1,0.5-1.9,0.4c-0.2,0-0.7,0-1-0.1c0,0-0.1-0.1-0.1-0.1
                            c-0.4-0.1-0.9,0.1-1.4,0.1c-0.7,0-1.4-0.3-2.2-0.4c-0.3,0-0.7,0.1-1,0.1c-0.4,0-0.9-0.2-1.3-0.2c-0.5,0-1,0-1.5,0
                            C16.1,5.8,10.2,6.2,5.8,6.2c-0.7,0-1.4,0-2.2,0.1C2,6.4,0.9,6.3,0,5.7C0.2,4.6,0.5,3,0,1.6c0.4-0.4,1-0.5,1.8-0.7
                            c0.4-0.1,0.9-0.3,1.5-0.3c0.2,0,0.4,0.1,0.6,0.1c0.8,0,1.9-0.2,3-0.3c1.1,0,3,0.2,3.9-0.1c1.8,0.2,3.7-0.1,5.7,0.1
                            c0.5,0,1,0.1,1.5,0.1c0.6,0,1.1-0.2,1.7-0.1c0.5,0,1,0.3,1.6,0.4c1.3,0.2,2.6,0.1,3.8,0.4C26.8,0.7,29.4,1,31.3,0.8z M14,2.1
                            c-0.4,0.8-1.1,1.5-1.4,2.4c0.4-0.1,0.5,0.1,0.8,0.1c0.4-0.9,1.1-1.5,1.4-2.5C14.6,2.1,14.3,2.1,14,2.1z M11,2.2
                            C10.2,2.8,9.5,3.7,9,4.6c0.4,0,0.6,0.1,1.1,0.1c0.5-0.1,0.2-0.8,0.8-0.8c0.1-0.2-0.3-0.1-0.2-0.3c0.6-0.3,0.6-1,0.9-1.4
                            C11.4,2.2,11.2,2.2,11,2.2z M15.6,4.4c0.3,0.2,0.7,0,0.9-0.1c-0.2-0.6,0.9-1,0.7-1.6c0.2-0.1,0.6-0.4,0.3-0.5c-0.1,0.2-0.3,0-0.5,0
                            C16.5,3,16.3,3.8,15.6,4.4z M5.5,2.6c0.3,0,0.3-0.1,0.3-0.3C5.5,2.3,5.4,2.4,5.5,2.6z M19.9,2.3c-0.4,0.8-1.1,1.2-1.1,2
                            c0.2,0,0.5,0.1,0.8,0.1c0.2-0.5,0.7-1.2,0.3-1.7c0.2-0.1,0.3-0.2,0.4-0.4C20.2,2.3,20.1,2.3,19.9,2.3z M2.8,3c0.4,0,0.5-0.2,0.4-0.5
                            C2.7,2.4,2.6,2.7,2.8,3z M28.5,2.7c0.1,0,0.5,0.1,0.5-0.1C28.8,2.5,28.6,2.5,28.5,2.7z M22.3,3.5C22.8,3.4,22.9,3,23,2.6
                            C22.3,2.5,22.7,3.3,22.3,3.5z M24.8,4.2c0.6,0,0.6-0.5,0.7-0.8c0,0,0.2,0,0.2,0c0.1-0.2-0.2-0.6,0.2-0.6c0-0.1-0.1-0.2-0.2-0.2
                            C25.2,3,25,3.6,24.8,4.2z M4,4.6c0.7-0.2,0.6-1,1.3-1.2c-0.1-0.3,0.3-0.5,0-0.7C4.9,3.3,4.5,3.9,4,4.6z M7.6,3.2
                            c0.1,0,0.2-0.3,0-0.4C7.7,3,7.3,3.2,7.6,3.2z M22.3,3.6C22,3.9,22.5,4,22.3,3.6L22.3,3.6z M6.6,4.6c-0.1-0.1,0.3-0.2,0-0.3
                            C6.6,4.3,6.3,4.5,6.6,4.6z M22.3,4.3c-0.1,0-0.1-0.1-0.3-0.1C21.8,4.4,22.3,4.5,22.3,4.3z"></path>
                    <path class="st0" d="M31,9.6c1.1,0.3,0.5,1.4,0.5,2c0,0.2,0.2,0.4,0.2,0.7c0,0.4-0.1,0.9-0.1,1.4c0,0.7,0.2,1.2,0,1.8
                            c-0.9,0.4-2,0.2-3.1,0.2c-0.3,0-0.5,0.1-0.9,0.1C26.2,16,24.4,15.7,23,16c-2.2-0.3-4.5,0.1-6.7-0.1c-0.5,0-1-0.2-1.9-0.2
                            c-0.6,0-1.2-0.2-1.7-0.1c-0.2,0-0.4,0-0.5,0c0,0-0.2,0.1-0.2,0.1c-0.2,0-0.5-0.2-0.7-0.2c-0.3,0-0.6,0-1,0c-0.3,0-0.5-0.1-0.7-0.1
                            c-0.3,0-0.6,0.2-1,0.1c-0.3,0-0.6-0.1-0.9-0.1c-1.1,0-2.4,0.1-3.7,0.1c-0.8,0-1.6,0-2.3,0.2c-0.7-0.2-1.1-0.6-1.6-0.9
                            c0.3-0.7-0.1-1.8,0.3-2.3c0.1-0.3-0.2-0.2-0.2-0.4c0.6-0.6,0.3-1.2,0.4-2c0.5-0.2,1-0.4,1.2-0.6c2.2-0.6,4.7-0.2,7.1-0.2
                            c1.3,0,2.4-0.2,3.5-0.1C13,9.3,14,9.5,15.1,9.6c0.8,0,1.6,0,2.3,0c1.2,0,2.8,0,4.5,0.1c1.3,0.1,2.6,0.2,3.9,0.1c0.3,0,0.6-0.1,1-0.1
                            C28.2,9.6,29.7,9.8,31,9.6z M4.2,11c0-0.1,0-0.2-0.2-0.1c-1.4,0.3-1.4,1.2-1.2,2.3C3.3,12.4,3.6,11.6,4.2,11z M4.4,14
                            c0.6,0,1.2,0,1.5-0.1c-0.2,0-0.3-0.1-0.3-0.1C5.8,13.5,5.7,13,6.3,13c0.1-0.9,1-1.3,1.2-2.2c-0.3,0-0.4,0.2-0.6,0
                            C6.1,11.7,5.2,12.9,4.4,14z M12.7,10.8c0,0.1-0.2,0.1-0.3,0.1c-0.3,0.6-1,0.9-1.2,1.6c-0.3,0.2-0.9,0.9-0.1,1c0.7-0.9,1.5-1.7,2-2.7
                            C12.9,10.9,12.8,10.8,12.7,10.8z M18.4,11.1c-0.6,1-1.8,1.9-1.7,3.1c0.3,0,0.4,0.1,0.7,0.1c0-0.3-0.6-0.2-0.4-0.5
                            c0.2-0.1,0.4,0,0.6-0.1c0.2-1.1,0.8-1.6,1.4-2.5C18.9,11.1,18.7,11.1,18.4,11.1z M25.8,11.2c-0.1,0.5-0.6,1.1-0.7,1.7
                            c-0.2,0.7-0.5,1.1-0.5,1.5c0.4-0.1,0.4,0,0.9-0.1c0.4-1,1.1-2,1.4-3.2C26.3,11.1,26.2,11.3,25.8,11.2z M15.4,11.5
                            c0-0.1,0.2-0.2,0-0.2C15.4,11.4,15.2,11.5,15.4,11.5z M13.9,13.3c0.3,0.1,0.2-0.2,0.3-0.2C14,13,13.9,13.1,13.9,13.3z M22.2,13.6
                            c0.3,0.1,0.3-0.3,0.1-0.3C22.2,13.4,22.1,13.4,22.2,13.6z M13.8,14.1c-0.1-0.3,0.3-0.3,0.3-0.6c-0.1,0-0.1-0.1-0.2-0.1
                            C13.8,13.5,13.3,13.9,13.8,14.1z M8.2,13.9c0-0.1,0.3,0,0.3-0.1c-0.2,0-0.1-0.2-0.3-0.2C8.3,13.8,7.9,13.9,8.2,13.9z M28.2,14.2
                            c0.3,0,0.5,0,0.7-0.1c-0.1-0.2,0.2-0.6-0.2-0.5C28.6,13.9,28.3,14,28.2,14.2z"></path>
                    <path class="st0" d="M11.5,19c4.4,0,9.7,0.3,14,0.8c1.9-0.1,3.3-0.2,5.2-0.3c0.3,0.1,0.5,0.4,0.7,0.6c-0.7,1.9,0.2,4-0.1,5.7
                            c-0.5,0.1-0.9,0.2-1.2,0.4c-0.5,0-1-0.2-1.5-0.2c-0.5,0-1,0.2-1.6,0.2c-1.2,0.1-2.7-0.1-4.2,0.1c-0.4,0-0.9,0-1.3,0.1
                            c0,0-0.2,0.1-0.2,0.1c-3.4,0.1-7.4-0.3-10.8-0.4c-1.2,0-2.5,0-3.5,0.1c-0.8,0.1-1.6,0-2.3,0c-0.3,0-0.6,0.2-1,0.2
                            c-0.4,0-0.8-0.1-1.2-0.1c-0.5,0-0.7,0.3-1.2,0.2C1,26.5,0.7,26,0.2,25.9c-0.1-2.1,0.4-3.7,0.4-6c0.4-0.1,0.6-0.4,1.2-0.4
                            c0.4-0.3,0.8-0.7,1.5-0.8c0.5-0.1,1,0.1,1.6,0.1c1.2,0,2.5-0.2,3.5,0c0.4-0.3,1.5-0.6,2.1-0.4C11.2,18.4,11.1,18.8,11.5,19z
                                M7.1,20.1c-1.3,0.9-2.3,2.2-3,3.6c0.2,0.1,0.1,0.3,0.2,0.4c0,0.2-0.5,0.1-0.4,0.4c0.3,0.1,1.2,0.1,1.5,0c0-0.2-0.2-0.2-0.5-0.2
                            c0.1-0.4-0.6-0.2-0.4-0.6c0.2-0.3,0.9-0.3,1.3-0.4c-0.1-0.8,1.1-1.3,1.2-2.2c0.5-0.1,0.7-0.6,0.5-0.9C7.2,20.2,7.1,20.2,7.1,20.1z
                                M11.8,20.3c-0.5,0.6-0.8,1.3-1.4,1.7c0,0.6-0.2,1-0.4,1.4c0.5,0,0.9,0,1.4,0c0.5-1.1,1.3-2,1.8-3.1C12.6,20.4,12.3,20.3,11.8,20.3z
                                M3.2,20.8c0.3,0,0.4-0.1,0.4-0.3c-0.1,0-0.3,0-0.4,0C3.2,20.6,3.2,20.7,3.2,20.8z M13.9,23.5c0.7,0.1,1.2-0.1,1.5-0.3
                            c0.4-1.1,0.7-1.8,1.4-2.6c-0.4,0-0.8,0-1.1-0.1C15.2,21.5,14.4,22.4,13.9,23.5z M18,23.2c0.6,0.1,0.8-0.2,1.1-0.3
                            c-0.1-0.7,0.8-1.4,1-2.2C18.4,20.9,18.6,22.3,18,23.2z M21.8,22.8c1.5,0,1.7-1,1.8-1.7C22,20.7,22.1,22.1,21.8,22.8z M26.4,21.1
                            c-0.4,0.2-0.2,0.6-0.3,0.9c0,0.1-0.3,0.2-0.3,0.3c-0.2,0.4-0.2,0.4-0.3,0.7c-0.1,0.2-0.6,0.7-0.2,0.9c0.3-0.6,0.8-0.7,0.9-1.5
                            c0.6-0.3,0.8-0.8,1.1-1.2C26.8,21.2,26.8,21,26.4,21.1z M27.1,24.5c0.6,0,0.8-0.1,1.3,0c0.6-0.3,0.1-0.5,0.1-0.7c0,0,0.2,0,0.2-0.1
                            c0-0.1-0.1-0.5-0.2-0.6C28.1,23.6,27.7,24.1,27.1,24.5z M24.8,24.3c0,0,0-0.1,0.1-0.1c0-0.1,0-0.2-0.2-0.1
                            C24.7,24.1,24.7,24.3,24.8,24.3z M20.2,24.8c0.7,0,1.4,0.2,1.8-0.1c-0.2,0,0-0.4-0.1-0.5C20.9,24.1,20.5,24.4,20.2,24.8z M25.2,24.5
                            c-0.2-0.1-0.3-0.2-0.6-0.1C24.5,24.8,25,24.7,25.2,24.5z M18.7,24.5c-0.5,0.1-1.4,0-1.6,0.4c0.9-0.1,2,0,3-0.1
                            C19.5,24.7,19.1,24.6,18.7,24.5z"></path>
                    </svg>
            </button>
        </div>
    </div>

    <div class="header--navbar margin-content">
        <button class="header--button header--navbar_close_icon">
            <svg width="25px" class="svg-menu-opener" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 32 26.5" style="enable-background:new 0 0 32 26.5;" xml:space="preserve">
                    <path class="st0" d="M31.3,0.8c1.2,1.4-0.4,3.5,0.1,5.5c-0.6,0.2-1,0.5-1.9,0.4c-0.2,0-0.7,0-1-0.1c0,0-0.1-0.1-0.1-0.1
                        c-0.4-0.1-0.9,0.1-1.4,0.1c-0.7,0-1.4-0.3-2.2-0.4c-0.3,0-0.7,0.1-1,0.1c-0.4,0-0.9-0.2-1.3-0.2c-0.5,0-1,0-1.5,0
                        C16.1,5.8,10.2,6.2,5.8,6.2c-0.7,0-1.4,0-2.2,0.1C2,6.4,0.9,6.3,0,5.7C0.2,4.6,0.5,3,0,1.6c0.4-0.4,1-0.5,1.8-0.7
                        c0.4-0.1,0.9-0.3,1.5-0.3c0.2,0,0.4,0.1,0.6,0.1c0.8,0,1.9-0.2,3-0.3c1.1,0,3,0.2,3.9-0.1c1.8,0.2,3.7-0.1,5.7,0.1
                        c0.5,0,1,0.1,1.5,0.1c0.6,0,1.1-0.2,1.7-0.1c0.5,0,1,0.3,1.6,0.4c1.3,0.2,2.6,0.1,3.8,0.4C26.8,0.7,29.4,1,31.3,0.8z M14,2.1
                        c-0.4,0.8-1.1,1.5-1.4,2.4c0.4-0.1,0.5,0.1,0.8,0.1c0.4-0.9,1.1-1.5,1.4-2.5C14.6,2.1,14.3,2.1,14,2.1z M11,2.2
                        C10.2,2.8,9.5,3.7,9,4.6c0.4,0,0.6,0.1,1.1,0.1c0.5-0.1,0.2-0.8,0.8-0.8c0.1-0.2-0.3-0.1-0.2-0.3c0.6-0.3,0.6-1,0.9-1.4
                        C11.4,2.2,11.2,2.2,11,2.2z M15.6,4.4c0.3,0.2,0.7,0,0.9-0.1c-0.2-0.6,0.9-1,0.7-1.6c0.2-0.1,0.6-0.4,0.3-0.5c-0.1,0.2-0.3,0-0.5,0
                        C16.5,3,16.3,3.8,15.6,4.4z M5.5,2.6c0.3,0,0.3-0.1,0.3-0.3C5.5,2.3,5.4,2.4,5.5,2.6z M19.9,2.3c-0.4,0.8-1.1,1.2-1.1,2
                        c0.2,0,0.5,0.1,0.8,0.1c0.2-0.5,0.7-1.2,0.3-1.7c0.2-0.1,0.3-0.2,0.4-0.4C20.2,2.3,20.1,2.3,19.9,2.3z M2.8,3c0.4,0,0.5-0.2,0.4-0.5
                        C2.7,2.4,2.6,2.7,2.8,3z M28.5,2.7c0.1,0,0.5,0.1,0.5-0.1C28.8,2.5,28.6,2.5,28.5,2.7z M22.3,3.5C22.8,3.4,22.9,3,23,2.6
                        C22.3,2.5,22.7,3.3,22.3,3.5z M24.8,4.2c0.6,0,0.6-0.5,0.7-0.8c0,0,0.2,0,0.2,0c0.1-0.2-0.2-0.6,0.2-0.6c0-0.1-0.1-0.2-0.2-0.2
                        C25.2,3,25,3.6,24.8,4.2z M4,4.6c0.7-0.2,0.6-1,1.3-1.2c-0.1-0.3,0.3-0.5,0-0.7C4.9,3.3,4.5,3.9,4,4.6z M7.6,3.2
                        c0.1,0,0.2-0.3,0-0.4C7.7,3,7.3,3.2,7.6,3.2z M22.3,3.6C22,3.9,22.5,4,22.3,3.6L22.3,3.6z M6.6,4.6c-0.1-0.1,0.3-0.2,0-0.3
                        C6.6,4.3,6.3,4.5,6.6,4.6z M22.3,4.3c-0.1,0-0.1-0.1-0.3-0.1C21.8,4.4,22.3,4.5,22.3,4.3z"></path>
                <path class="st0" d="M31,9.6c1.1,0.3,0.5,1.4,0.5,2c0,0.2,0.2,0.4,0.2,0.7c0,0.4-0.1,0.9-0.1,1.4c0,0.7,0.2,1.2,0,1.8
                        c-0.9,0.4-2,0.2-3.1,0.2c-0.3,0-0.5,0.1-0.9,0.1C26.2,16,24.4,15.7,23,16c-2.2-0.3-4.5,0.1-6.7-0.1c-0.5,0-1-0.2-1.9-0.2
                        c-0.6,0-1.2-0.2-1.7-0.1c-0.2,0-0.4,0-0.5,0c0,0-0.2,0.1-0.2,0.1c-0.2,0-0.5-0.2-0.7-0.2c-0.3,0-0.6,0-1,0c-0.3,0-0.5-0.1-0.7-0.1
                        c-0.3,0-0.6,0.2-1,0.1c-0.3,0-0.6-0.1-0.9-0.1c-1.1,0-2.4,0.1-3.7,0.1c-0.8,0-1.6,0-2.3,0.2c-0.7-0.2-1.1-0.6-1.6-0.9
                        c0.3-0.7-0.1-1.8,0.3-2.3c0.1-0.3-0.2-0.2-0.2-0.4c0.6-0.6,0.3-1.2,0.4-2c0.5-0.2,1-0.4,1.2-0.6c2.2-0.6,4.7-0.2,7.1-0.2
                        c1.3,0,2.4-0.2,3.5-0.1C13,9.3,14,9.5,15.1,9.6c0.8,0,1.6,0,2.3,0c1.2,0,2.8,0,4.5,0.1c1.3,0.1,2.6,0.2,3.9,0.1c0.3,0,0.6-0.1,1-0.1
                        C28.2,9.6,29.7,9.8,31,9.6z M4.2,11c0-0.1,0-0.2-0.2-0.1c-1.4,0.3-1.4,1.2-1.2,2.3C3.3,12.4,3.6,11.6,4.2,11z M4.4,14
                        c0.6,0,1.2,0,1.5-0.1c-0.2,0-0.3-0.1-0.3-0.1C5.8,13.5,5.7,13,6.3,13c0.1-0.9,1-1.3,1.2-2.2c-0.3,0-0.4,0.2-0.6,0
                        C6.1,11.7,5.2,12.9,4.4,14z M12.7,10.8c0,0.1-0.2,0.1-0.3,0.1c-0.3,0.6-1,0.9-1.2,1.6c-0.3,0.2-0.9,0.9-0.1,1c0.7-0.9,1.5-1.7,2-2.7
                        C12.9,10.9,12.8,10.8,12.7,10.8z M18.4,11.1c-0.6,1-1.8,1.9-1.7,3.1c0.3,0,0.4,0.1,0.7,0.1c0-0.3-0.6-0.2-0.4-0.5
                        c0.2-0.1,0.4,0,0.6-0.1c0.2-1.1,0.8-1.6,1.4-2.5C18.9,11.1,18.7,11.1,18.4,11.1z M25.8,11.2c-0.1,0.5-0.6,1.1-0.7,1.7
                        c-0.2,0.7-0.5,1.1-0.5,1.5c0.4-0.1,0.4,0,0.9-0.1c0.4-1,1.1-2,1.4-3.2C26.3,11.1,26.2,11.3,25.8,11.2z M15.4,11.5
                        c0-0.1,0.2-0.2,0-0.2C15.4,11.4,15.2,11.5,15.4,11.5z M13.9,13.3c0.3,0.1,0.2-0.2,0.3-0.2C14,13,13.9,13.1,13.9,13.3z M22.2,13.6
                        c0.3,0.1,0.3-0.3,0.1-0.3C22.2,13.4,22.1,13.4,22.2,13.6z M13.8,14.1c-0.1-0.3,0.3-0.3,0.3-0.6c-0.1,0-0.1-0.1-0.2-0.1
                        C13.8,13.5,13.3,13.9,13.8,14.1z M8.2,13.9c0-0.1,0.3,0,0.3-0.1c-0.2,0-0.1-0.2-0.3-0.2C8.3,13.8,7.9,13.9,8.2,13.9z M28.2,14.2
                        c0.3,0,0.5,0,0.7-0.1c-0.1-0.2,0.2-0.6-0.2-0.5C28.6,13.9,28.3,14,28.2,14.2z"></path>
                <path class="st0" d="M11.5,19c4.4,0,9.7,0.3,14,0.8c1.9-0.1,3.3-0.2,5.2-0.3c0.3,0.1,0.5,0.4,0.7,0.6c-0.7,1.9,0.2,4-0.1,5.7
                        c-0.5,0.1-0.9,0.2-1.2,0.4c-0.5,0-1-0.2-1.5-0.2c-0.5,0-1,0.2-1.6,0.2c-1.2,0.1-2.7-0.1-4.2,0.1c-0.4,0-0.9,0-1.3,0.1
                        c0,0-0.2,0.1-0.2,0.1c-3.4,0.1-7.4-0.3-10.8-0.4c-1.2,0-2.5,0-3.5,0.1c-0.8,0.1-1.6,0-2.3,0c-0.3,0-0.6,0.2-1,0.2
                        c-0.4,0-0.8-0.1-1.2-0.1c-0.5,0-0.7,0.3-1.2,0.2C1,26.5,0.7,26,0.2,25.9c-0.1-2.1,0.4-3.7,0.4-6c0.4-0.1,0.6-0.4,1.2-0.4
                        c0.4-0.3,0.8-0.7,1.5-0.8c0.5-0.1,1,0.1,1.6,0.1c1.2,0,2.5-0.2,3.5,0c0.4-0.3,1.5-0.6,2.1-0.4C11.2,18.4,11.1,18.8,11.5,19z
                            M7.1,20.1c-1.3,0.9-2.3,2.2-3,3.6c0.2,0.1,0.1,0.3,0.2,0.4c0,0.2-0.5,0.1-0.4,0.4c0.3,0.1,1.2,0.1,1.5,0c0-0.2-0.2-0.2-0.5-0.2
                        c0.1-0.4-0.6-0.2-0.4-0.6c0.2-0.3,0.9-0.3,1.3-0.4c-0.1-0.8,1.1-1.3,1.2-2.2c0.5-0.1,0.7-0.6,0.5-0.9C7.2,20.2,7.1,20.2,7.1,20.1z
                            M11.8,20.3c-0.5,0.6-0.8,1.3-1.4,1.7c0,0.6-0.2,1-0.4,1.4c0.5,0,0.9,0,1.4,0c0.5-1.1,1.3-2,1.8-3.1C12.6,20.4,12.3,20.3,11.8,20.3z
                            M3.2,20.8c0.3,0,0.4-0.1,0.4-0.3c-0.1,0-0.3,0-0.4,0C3.2,20.6,3.2,20.7,3.2,20.8z M13.9,23.5c0.7,0.1,1.2-0.1,1.5-0.3
                        c0.4-1.1,0.7-1.8,1.4-2.6c-0.4,0-0.8,0-1.1-0.1C15.2,21.5,14.4,22.4,13.9,23.5z M18,23.2c0.6,0.1,0.8-0.2,1.1-0.3
                        c-0.1-0.7,0.8-1.4,1-2.2C18.4,20.9,18.6,22.3,18,23.2z M21.8,22.8c1.5,0,1.7-1,1.8-1.7C22,20.7,22.1,22.1,21.8,22.8z M26.4,21.1
                        c-0.4,0.2-0.2,0.6-0.3,0.9c0,0.1-0.3,0.2-0.3,0.3c-0.2,0.4-0.2,0.4-0.3,0.7c-0.1,0.2-0.6,0.7-0.2,0.9c0.3-0.6,0.8-0.7,0.9-1.5
                        c0.6-0.3,0.8-0.8,1.1-1.2C26.8,21.2,26.8,21,26.4,21.1z M27.1,24.5c0.6,0,0.8-0.1,1.3,0c0.6-0.3,0.1-0.5,0.1-0.7c0,0,0.2,0,0.2-0.1
                        c0-0.1-0.1-0.5-0.2-0.6C28.1,23.6,27.7,24.1,27.1,24.5z M24.8,24.3c0,0,0-0.1,0.1-0.1c0-0.1,0-0.2-0.2-0.1
                        C24.7,24.1,24.7,24.3,24.8,24.3z M20.2,24.8c0.7,0,1.4,0.2,1.8-0.1c-0.2,0,0-0.4-0.1-0.5C20.9,24.1,20.5,24.4,20.2,24.8z M25.2,24.5
                        c-0.2-0.1-0.3-0.2-0.6-0.1C24.5,24.8,25,24.7,25.2,24.5z M18.7,24.5c-0.5,0.1-1.4,0-1.6,0.4c0.9-0.1,2,0,3-0.1
                        C19.5,24.7,19.1,24.6,18.7,24.5z"></path>
                </svg>
        </button>

        <div class="wrapper header--navbar_item">
            <div class="header1">
                <nav>
                    <div class="navbar">
                        <i class='bx bx-menu'></i>

                        <div class="nav-links">
                            <ul class="links">
                                <li><a href="Load8product">HOME</a></li>
                                <li>
                                    <a href="#">Categogy</a>
                                    <i class='bx bxs-chevron-down htmlcss-arrow arrow  '></i>
                                    <ul class="htmlCss-sub-menu sub-menu">
                                        <c:forEach items="${pdlistcc}" var="cate">
                                            <li><a href="#">${cate.namecategogy}</a></li>

                                        </c:forEach>
                                        <li class="more">
                <span><a href="#">More</a>
                <i class='bx bxs-chevron-right arrow more-arrow'></i>
              </span>


                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Nhan hieu</a>
                                    <i class='bx bxs-chevron-down js-arrow arrow '></i>
                                    <ul class="js-sub-menu sub-menu">
<c:forEach items="${listTra}" var="t">
                                        <li><a href="#">${t.nametrademark}</a></li>
</c:forEach>
                                    </ul>
                                </li>
                                <li><a href="ProductServlet">Shop</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="Newsdetail.jsp">Tin tuc</a></li>
                                <li><a href="#">Cong thuc pha che</a></li>
                                <li><a href="#">Lien he</a></li>
                            </ul>
                        </div>
                        <div class="search-box">
                            <i class='bx bx-search' style="color: #1c1c1c"></i>
                            <div class="input-box" style="z-index: 99" >
                                <form action="SearchControl?index=1#drink-menu-section" method="post">
                                    <input oninput="searchByName(this)" value="${txtSearch}" name="txtSearch"
                                           type="text"   placeholder="Search...">
                                </form>

                            </div>
                        </div>
                    </div>
                </nav>
                <script src="script.js"></script>
<%--                <nav class="container1">--%>
<%--                    <a href="" id="logo">--%>
<%--                        <img src="" alt="">--%>
<%--                    </a>--%>
<%--                    <ul id="main-menu">--%>
<%--                        <li><a href="index.html">Trang chủ</a></li>--%>
<%--                        <li><a href="about.html">Tin tức</a></li>--%>
<%--                        <li><a href="about.html">Shop</a></li>--%>
<%--                        <li><a href="about.html">Rượu Tây</a></li>--%>
<%--                        <li><a href="about.html">Rượu Vang</a></li>--%>

<%--                        <li><a href="">Rượu ngoại</a>--%>
<%--                            <ul class="sub-menu">--%>
<%--&lt;%&ndash;                                <li><a href="ds_spY.html">Rượu vang Ý</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <li><a href="ds_spD.html">Rượu vang Đức</a>&ndash;%&gt;--%>

<%--&lt;%&ndash;                                </li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <li><a href="ds_spP.html">Rượu vang Pháp</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <li><a href="ds_spN.html">Rượu Nhật</a></li>&ndash;%&gt;--%>
<%--                                <c:forEach items="${pdlistcc}" var="p">--%>
<%--&lt;%&ndash;                                    <a href="ADMIN-P?idcategogy=${p.idcategogy}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <button data-food-type="salad">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <!-- <span data-food-type="salad" class="text_product"> Từ 120$-300$</span> -->&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                ${p.namecategogy}&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </a>&ndash;%&gt;--%>
<%--                                    <li><a href="CategogyPServlet?idcategogy=${p.idcategogy}">${p.namecategogy}</a></li>--%>
<%--                                </c:forEach>--%>

<%--                            </ul>--%>
<%--                        <li><a href="about.html">Phụ kiện</a></li>--%>
<%--                        <li><a href="about.html">Gi thiệu</a></li>--%>
<%--                        </li>--%>
<%--                        <li><a href="cart.html">Cart</a></li>--%>
<%--                    </ul>--%>
<%--                </nav>--%>

            </div>
        </div>

    </div>
</div>
<container>
    <section id="home">
        <div class="container margin-content">
            <!-- container--banner -->
            <div class="slider">
                <!-- fade css -->
                <div class="myslide fade">
                    <div class="txt">
                        <h1> Rượu Vang Ý </h1>
                        <p>Ý được biết đến là một trong số những quốc gia có truyền thống lâu đời về lĩnh vực sản xuất rượu vang. Ở đây nổi tiếng cho ra đời những chai rượu vang ngon chất lượng nhất</p>
                    </div>
                    <img src="assets/home/ads/home1.jpg" style="width: 100%; height: 100%;" class="imgslider">
                </div>

                <div class="myslide fade">
                    <div class="txt">
                        <h1>Rượu vang Pháp </h1>
                        <p>Nhắc đến rượu vang là người ta ngay lập tức nhắc đến rượu vang Pháp với những vùng làm rượu vang Pháp nổi tiếng toàn thế giới như Bordeaux, Bourgogne, Champagne hay Côtes-Du-Rhône… </p>
                    </div>
                    <img src="assets/home/ads/home12.jpg" style="width: 100%; height: 100%;"class="imgslider">
                </div>

                <div class="myslide fade">
                    <div class="txt">
                        <h1>Top 8 thương hiệu </h1>
                        <p>Sang trọng, tinh tế và có lịch sử lâu đời là điểm chung của 10 nhãn hiệu rượu ngoại nổi tiếng và bán chạy nhất thế giới. Đây cũng là các loại rượu ngoại nổi tiếng ở Việt Nam. Các loại rượu ngoại cao cấp được ưa chuộng ở Việt Nam gồm: Chivas Regal,  Remy Martin, Hennessy, Johnni Walker và Absolut Vodka</p>
                    </div>
                    <img src="assets/home/ads/home2.jpg" style="width: 100%; height: 100%;"class="imgslider">
                </div>

                <div class="myslide fade">
                    <div class="txt">
                        <h1>Rượu Vang Chile</h1>
                        <p>Web Devoloper<br>Subscribe To My Channel For More Videos</p>
                    </div>
                    <img src="assets/home/ads/home3.jpg" style="width: 100%; height: 100%;"class="imgslider">
                </div>

                <div class="myslide fade">
                    <div class="txt">
                        <h1> Champagne & Vang Nổ</h1>
                        <p>Web Devoloper<br>Subscribe To My Channel For More Videos</p>
                    </div>
                    <img src="assets/home/ads/home6.jpg" style="width: 100%; height: 100%;" class="imgslider">
                </div>
                <!-- /fade css -->

                <!-- onclick js -->
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>

                <div class="dotsbox" style="text-align:center">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                    <span class="dot" onclick="currentSlide(4)"></span>
                    <span class="dot" onclick="currentSlide(5)"></span>
                </div>
                <!-- /onclick js -->
            </div>



        </div>



        <div class="footer_container">
            <c:forEach items="${listTra}" var="t">
                <img src="${t.imgtrademark}" class="image_medal">
            </c:forEach>


        </div>
    </section>
    <!-- product -->
    <section class="align-items-center bg-img bg-img-fixed" id="drink-menu-section"
<%--             style="background-image: url();">--%>
        <div class="container1 " >
            <div class="drink-menu">
                <h1>
                    <span class="primary-color">Bạn</span> sẽ chọn gì hôm nay?
                </h1>
                <p>
                    Các sản phẩm của chúng tôi

                </p>
                <div class="Vodka-cacloaivoka">
                    <div class="product_left" >
                        <div class="zoom play-on-scroll">
                            <button class="active" data-food-type="all">
                                Tất cả
                            </button>
                        </div>
                        <div class="zoom play-on-scroll delay-2">
                            <c:forEach items="${pdlistcc}" var="p">
                                <a href="ADMIN-P?idcategogy=${p.idcategogy}">
                                    <button data-food-type="salad">

                                            ${p.namecategogy}
                                    </button>
                                </a>
                            </c:forEach>


                        </div>
                        <div class="zoom play-on-scroll">
                            <button class="active" data-food-type="all">
                                <a href="ProductServlet"><i style="font-size: 22px" class="fas fa-chevron-left"></i></a>
                            </button>
                        </div>





                    </div>
                </div>


                <div class="drink-item-wrap all" id="content">
<c:forEach items="${list}"  var="o">
    <div class="drink-item salad-type"  >
        <c:if test="${o.saleprice!=0.0}">
            <div>
                <span style="position: absolute;background-color: red;width: 100px;height: 50px;z-index: 99;border-radius: 5px;margin-top:15%;font-weight: bold ;color: white;;">Sale ${o.saleprice}  !</span>
            </div>
        </c:if>

        <div class="item-wrap bottom-up play-on-scroll">
            <div class="item-img " style="height: 65%;" >
                <!-- <div class="img-holder bg-img"> -->
                <img src="${o.img}" alt="" class="img-holder bg-img">
                <!-- </div> -->
                <!-- <div class="item-img " style="height: 300px;">
                    <div class="img-holder bg-img"
                        style="background-image: url('assets/home/ads/home11_1.jpg');"></div>
                </div> -->


            </div>
            <c:if test="${o.saleprice!=0.0}">
                <div>
                    <p>$${o.price} con $<span style="padding: 0;margin: 10px 0px;color: red;">${o.price-o.price*o.saleprice/100}</span></p>
                </div>

            </c:if>
            <c:if test="${o.saleprice==0.0}">

                <div>
                    <p>$${o.price} </p>
                </div>
            </c:if>



            <div>
                <div>
                    <a href="#" style="margin-top: 140px;text-decoration: none;color: #000;">  ${o.name}
                    </a>
                </div>
            </div>

                <%--                                <input type="number" name="soluong" min="1" max="10" value="1" style="border-radius: 5px;width: 40px;">--%>



                <%--                        <a href="cart-add1?id=${p.id}"><button>Xem</button></a>--%>
            <button onclick="themvaogiohang(this)"
            ><a href="PDDetailsServlet?id=${o.id}"  style="text-decoration: none"><i class="fas fa-eye"></i></a></button>
            <a href="cart-add1?id=${o.id}" style="text-decoration: none"><button><i class="fas fa-cart-plus"></i></button></a>

        </div>


    </div>
</c:forEach>
    <c:forEach items="${load8sp}" var="p">
                        <div class="drink-item salad-type product"  >
                            <c:if test="${p.saleprice!=0.0}">
                                <div>
                                    <span style="position: absolute;background-color: red;width: 100px;height: 50px;z-index: 99;border-radius: 5px;margin-top:15%;font-weight: bold ;color: white;;">Giảm ${p.saleprice}  !</span>
                                </div>
                            </c:if>

                            <div class="item-wrap bottom-up play-on-scroll">
                                <div class="item-img " style="height: 65%;" >

                                    <img src="${p.img}" alt="" class="img-holder bg-img">



                                </div>
                                <c:if test="${p.saleprice!=0.0}">
                                    <div>
                                        <p>$${p.price} con $<span style="padding: 0;margin: 10px 0px;color: red;">${p.price-p.price*p.saleprice/100}</span></p>
                                    </div>

                                </c:if>
                                <c:if test="${p.saleprice==0.0}">

                                    <div>
                                        <p>$${p.price} </p>
                                    </div>
                                </c:if>



                                <div>
                                    <div>
                                        <a href="#" style="margin-top: 140px;text-decoration: none;color: #000;">  ${p.name}
                                        </a>
                                    </div>
                                </div>

                                <button onclick="themvaogiohang(this)"
                                ><a onclick="" href="PDDetailsServlet?id=${p.id}" style="text-decoration: none"><i class="fas fa-eye"></i></a></button>
                                <a  href="cart-add1?id=${p.id}#drink-menu-section" style="text-decoration: none"><button><i class="fas fa-cart-plus" ></i></button></a>


                            </div>


                        </div>
                    </c:forEach>

                </div>
                <div class="search">
<%--                    <c:forEach items="${list}"  var="o">--%>
<%--                        <a href="#">${o.name}</a>--%>

<%--                    </c:forEach>--%>
                    <div class="paging" >
                        <c:forEach begin="1" end="${end}" var="i">
                            <a id="${i }" href="SearchControl?index=${i}&txtSearch=${txt}" style="background: rgba(0,0,0,0.8);padding: 10px;border-radius: 10px;margin-right: 10px;font-weight: bolder;color: #f0f0f0;text-decoration: none" >${i}  </a>

                        </c:forEach>

                    </div>

                </div>
                <button style="margin-top: 10%;border-radius: 10px;padding: 20px;background: #272d40;color: #f0f0f0" onclick="Loadmore()">Load</button>
            </div>

        </div>
    </section>
    <!-- end product -->
    <section id="news" class="news">
<jsp:include page="News.jsp"></jsp:include>
    </section>


    <section id="foos" class="foost">

        <footer>
            <div class="footer-top"  >
                <div>
                    <div class="row">
                        <div class="col-3 item1">
                            <a href="#">
                                <img src="assets/Panader-logo-footer.png">
                            </a>
                            <p class="textwidget">Just like a perfectly baked pastry, we created Panadería
                                with special love – and it shows.</p>
                        </div>
                        <div class="col-3 item2">
                            <h3 class="widget-title">Useful Links</h3>
                            <div class="widget-body">
                                <div class="widget-item ">
                                    <a href="#" class="widget-link">
                                        <svg width="16px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 48 47.5" style="enable-background:new 0 0 48 47.5;" xml:space="preserve">
                                                <g>
                                                    <path class="st0" d="M22.3,47.7c-1.1,0.7-0.9-0.7-1.8-1.1c-0.8-0.4-1.9,0-2.6-0.4c-1.8-0.9-5.3-4.1-7-5.9C3.6,32.5-3.4,13.3,5,5
                                                        c1.3-1.3,3.9-3,6.3-3.3c6.5-0.9,9.6,2.8,12.1,6.6c2.8-1.9,3.5-4.6,6.3-5.9c7.7-3.7,15.8,2.1,16.6,8.5c1.3,10-3.2,21.4-9.9,27.6
                                                        c-2,1.9-4.5,3.6-6.6,5.2C27.3,45.3,24.6,46.6,22.3,47.7z M6.1,10.9c1-2.5,5-4,5.2-5.9C8.6,5.7,5.7,8.2,6.1,10.9z M38.9,6.8
                                                        c-1.5-1-5.1-2.9-7-1.1c1.9,0.4,2.8-0.5,3.3,1.1c-1.3,1.2-2.7,2.7-4.4,4c-1.5,1.1-4.3,1.8-4,3.7c3.9-2.6,6.6-6.4,11.8-7.7
                                                        C38.5,7,38.8,7.2,38.9,6.8z M14.6,14.9c-2.1,1.9-4.3,4-6.6,5.2c-0.5-0.4-1.1-0.6-1.5-1.1c0-3.3,3.4-4.6,5.2-6.3
                                                        c2-1.9,3.6-4.2,6.3-5.2c-1.3-1.8-3.3-0.1-4.4,0.7c-2.3,1.8-4.5,5.6-6.6,7C6,15.1,6.1,16,5,15.7c0.9,3.1,0.3,6.3,2.2,8.8
                                                        c1-1,2.3-1.6,3.3-2.6c-0.6-0.1-0.8-0.6-0.7-1.5c0.8-0.3,0.6-1.2,1.1-1.8c2.6-3.2,6.9-5,9.9-7.7C18.4,9.5,16.5,13.2,14.6,14.9z
                                                            M29,16.8c-1.2,0.2-1.4-0.5-2.2-0.7c-3.5,2.6-6.4,7.4-11.8,7c-1.9,2.4-5.3,3.2-6.6,6.3c0.7,0.1,0.2,1.2,0.7,1.5
                                                        c2.7-1.6,5.7-3.8,8.8-5.9c2.5-1.6,6.5-6,9.9-2.9c-5.1,4.6-11.9,7.5-16.6,12.5c1.5,0.7,2.6-1.1,3.7-1.8c4.3-3.2,9.4-8.2,14.7-8.1
                                                        c3.3-1.6,6.7-3.1,9.9-4.8c0.4,0.3,1,0.5,1.8,0.4c0.2-1.9,0.7-3.5,0.7-5.5c-5.2,1.8-8.1,5.9-12.9,8.1c0-1.1-1.6-0.6-1.5-1.8
                                                        c0.7-2.4,3.3-3.5,5.2-4.8c2-1.4,4.1-2.9,6.3-4c0.9-1,1.8,0,2.6-0.7C41.2,10.3,40.9,9,40,8.3C36.7,11.5,33.3,14.6,29,16.8z M16.5,19
                                                        c3.1-0.6,4.2-3.2,7-4c0.1-0.9-0.6-1.2-1.1-1.5C20.7,15.6,18.3,17.1,16.5,19z M31.2,37.4c4.1-3.5,7.6-7.6,9.2-13.6
                                                        c-0.1-0.3-0.3-0.4-0.7-0.4c-3.4,2.3-7.1,4.1-11.4,5.5c-0.7,0-0.5-1-1.5-0.7c-4.2,3.3-8.3,6.6-12.9,9.6c1.2,0.5,1.4,2,2.9,2.2
                                                        c1.5-1.3,4.1-3.8,7-5.9c2.5-1.8,7.2-5.8,9.6-4.4c0.7,0.4,0.9,0.9,1.1,1.5c-5.3,3.5-10.5,6.9-14.7,11.4
                                                        C24.9,45.2,26.7,36.6,31.2,37.4z"></path>
                                                </g>
                                                </svg>
                                        <span>ABOUT US</span>
                                    </a>
                                </div>
                                <div class="widget-item">
                                    <a href="#" class="widget-link">
                                        <svg width="16px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 22 28" style="enable-background:new 0 0 22 28;" xml:space="preserve">
                                                <g>
                                                    <path class="st0" d="M19.7,11.4c1,0,1.3,1.8,1.6,2.6c0.4,1.3,0.7,2.5,0.7,3.7c0,1.3-0.4,2.5-0.9,3.6c-0.3,0.9-0.8,1.5-1.3,2.2
                                                    c-0.5,0.6-0.9,1-1.6,1.5c-0.4,0.2-0.6,0.6-0.9,0.8c-0.4,0.3-1,0.5-1.5,0.7c-0.5,0.3-1.1,0.4-1.7,0.5c-0.2,0.1-0.5,0.3-0.7,0.3
                                                    c-0.9,0.2-1.9,0.1-2.8,0.1c-1.5,0-2.9,0.1-4.2-0.4c-0.3-0.1-0.7-0.3-1-0.5c-2-1-3.6-2.8-4.6-5c-0.1-0.3-0.3-0.5-0.4-0.7
                                                    C0,19.7-0.1,17.7,0.1,16c0.1-1.2,0.4-2.6,0.8-3.6c0.4-1,0.7-1.6,1.4-2.5c0.5-0.7,1-1.1,1.6-1.7c0.5-0.5,1-0.8,1.8-1.3
                                                    C6,6.6,6.6,6.2,7,6.1C7.8,5.9,8.4,6,9.3,5.8c0.3-1.2,0.6-2.3,1.3-3.1c0.5-0.6,1.7-1.6,2.6-1.9c0.6-0.2,1.4-0.3,2.1-0.4
                                                    c3-0.4,5.3,2,5.5,4.6c0,0.8,0.1,1.8,0,2.6C20.7,9.1,20.2,10.3,19.7,11.4z M16.8,1.4c-1.1,0.5-2.2,1.4-3.4,1.8
                                                    c-0.1,0.1,0,0.3-0.1,0.4C12.2,4.4,11,5.1,10,6c0,0.1,0,0.2,0,0.3c1.1-0.8,2.1-1.7,3.2-2.4c1.3-0.8,2.8-1.4,3.9-2.4
                                                    C17,1.4,16.8,1.4,16.8,1.4z M14.8,1.5c-0.1,0.1-0.2,0.2-0.3,0.2c-0.3,0.2-0.8,0.4-1.2,0.6c-0.3,0.2-0.9,0.4-0.8,0.8
                                                    c0.7-0.2,1.4-0.9,2-1.3C14.6,1.8,15.1,1.6,14.8,1.5C14.9,1.5,14.9,1.5,14.8,1.5z M11.7,3.1c0.7-0.4,1.5-0.8,2.1-1.4
                                                    C13,1.9,12.3,2.5,11.7,3.1z M18.1,1.9c-0.5,0.6-1.4,0.8-1.9,1.5c0.1,0,0.3,0,0.4,0c0.6-0.4,1.3-0.7,1.8-1.3
                                                    C18.3,2,18.2,1.9,18.1,1.9z M15.1,3.2c0.1,0.1,0.3,0,0.5,0c0.3-0.3,1-0.5,1.3-0.8c0,0,0.2-0.3,0.1-0.3C16.3,2.5,15.7,2.8,15.1,3.2z
                                                     M18.7,2.4c-0.5,0.4-1.2,0.7-1.7,1c0.2,0.9,1.7-0.6,1.9-0.9C18.9,2.5,18.9,2.4,18.7,2.4z M19.2,3C18.8,3.4,18,3.5,17.6,4
                                                    c0.1,0.2,0.2,0.3,0.4,0.3c0.5-0.4,1.1-0.6,1.5-1.1C19.5,3.1,19.4,3,19.2,3z M11.4,4.6c0.4-0.3,1.4-0.9,0.8-1.2
                                                    c-0.7,0.6-1.9,0.9-1.9,2C10.5,5.2,10.9,4.9,11.4,4.6z M11,3.7c0.1,0,0.2-0.1,0.2-0.2C11.1,3.4,11.1,3.6,11,3.7z M18.1,4.6
                                                    c0,0.2,0,0.2,0,0.3c0.7-0.2,1.3-0.6,1.6-1.1C19.2,3.8,18.7,4.4,18.1,4.6z M17.8,5.9c-0.4-1.8-3-2.5-4.3-1c-1,1.4-0.3,3.9,1.4,4.2
                                                    C15,9.1,15,9.3,15.1,9.4C16.8,9.2,18.3,7.7,17.8,5.9z M18.6,5.7c0.6-0.3,1.6-0.5,1.4-1.3C19.4,4.8,18.1,4.9,18.6,5.7z M12.5,4.9
                                                    c-0.6,0.6-1.8,1.1-2.4,1.8C10,6.7,10,7,10,7.1c0.7-0.4,1.5-1.2,2.1-1.7c0.2-0.2,0.5-0.3,0.5-0.6C12.6,4.9,12.5,4.9,12.5,4.9z
                                                     M18.6,6.1c-0.1,0.3-0.1,0.5,0,0.8c0.3-0.1,0.6-0.4,0.9-0.6c0.2-0.2,0.7-0.4,0.6-0.8C19.5,5.6,19.1,5.8,18.6,6.1z M10.1,7.6
                                                    c-0.1,0.1,0,0.4,0,0.5c0.5-0.4,1.1-0.9,1.6-1.3C12,6.6,12.5,6.5,12.3,6C11.4,6.4,10.8,7,10.1,7.6z M20,6.7c-0.6,0.7-1.9,0.9-2,1.9
                                                    c0.8-0.5,1.5-1.1,2.1-1.8C20.2,6.7,20.1,6.6,20,6.7z M18.4,7.3C18.8,7.3,19,7,19.2,6.8C18.9,6.9,18.5,6.9,18.4,7.3z M6.8,7.4
                                                    C6.5,7.7,6.4,8.5,6.2,8.9c0,0-0.1,0.1,0,0c-0.2,0.8-0.3,1.7-0.4,2.4c1.2-0.2,2.5-0.2,3.7-0.4C9.4,9.5,9.5,8.3,9.3,6.9
                                                    C8.4,6.8,7.2,6.8,6.8,7.4z M12.2,7c-0.4,0.1-1.9,1.1-1.9,1.4c-0.1,0.4,0.2,0.8,0.4,1.1c0.3-0.3,0.7-0.6,1.1-0.9
                                                    c0.4-0.3,1-0.5,0.8-1c-0.8,0.3-1.3,0.9-2,1.3C10.9,8,11.9,7.8,12.4,7C12.3,7,12.3,7,12.2,7z M17.2,9.7c-0.1,0-0.1-0.1-0.3-0.1
                                                    C16.7,9.8,17,9.8,17,10c-0.2,0.2-0.6,0.4-0.6,0.8c-1.3,0.9-2.7,1.6-3.7,2.7c0.1,0.2,0.2,0.4,0.4,0.4c1.2-1.1,2.4-2.2,3.8-3.2
                                                    c0-0.1,0-0.2,0-0.2c0.8-0.9,1.9-1.5,2.8-2.3c0.1-0.1,0.3-0.3,0.3-0.6C19,8.2,18.1,8.9,17.2,9.7z M5.5,8.2c-1.4,1.2-2.7,2.5-3.4,4.3
                                                    c1-0.2,1.8-0.6,2.8-0.9C5,10.4,5.4,9.3,5.5,8.2C5.6,8.2,5.6,8.2,5.5,8.2z M12.7,8.4c-0.1,0-0.2,0.2-0.3,0.3
                                                    c-0.6,0.4-1.9,0.9-1.6,1.6c0.2-0.1,0.3-0.3,0.5-0.5c0.5-0.5,1.2-0.8,1.6-1.4C12.8,8.4,12.8,8.4,12.7,8.4z M17.7,10.2
                                                    c0.1,0,0.1,0.2,0.3,0.2c0.6-0.4,1-0.9,1.6-1.3C19.7,9,20,9,19.9,8.7c0-0.1-0.1-0.1-0.1-0.1C19.2,9.2,18.2,9.5,17.7,10.2z M13.1,8.9
                                                    c-0.7,0.6-1.5,1-2.1,1.7c0,0.2,0.1,0.2,0.1,0.3c0.5-0.2,0.8-0.6,1.1-0.9c0.5-0.2,0.9-0.5,1.2-1C13.3,9,13.3,8.9,13.1,8.9z
                                                     M12.5,10.3c-0.6,0.4-1.3,0.6-1,1.4c0.7-0.7,1.7-1.3,2.3-2C13.3,9.5,13,10,12.5,10.3z M17.8,11c0.2,0,0.2,0.2,0.4,0.2
                                                    c0.3-0.6,1.5-0.8,1.3-1.6C19,10.1,18.3,10.4,17.8,11z M16.2,9.9c-0.4,0-0.6,0.3-0.9,0.5c-0.9,0.6-2,1.2-2.7,1.8
                                                    c-0.2,0-0.5,0.1-0.6,0.2c0.1,0.3,0.2,0.5,0.4,0.6C13.6,11.9,15,11,16.2,9.9C16.3,9.9,16.2,9.9,16.2,9.9z M14.4,10
                                                    c-0.2,0.3-0.7,0.4-1,0.7c-0.3,0.2-0.6,0.5-0.8,0.7c-0.3,0.2-0.8,0.4-0.7,0.9c0.6-0.1,1-0.8,1.6-1.1c0.8-0.1,1.2-0.6,1.7-1
                                                    C14.9,10,14.6,10,14.4,10z M13.4,14.2c0.1,0.1,0.1,0.3,0.3,0.3c1.1-1.2,2.4-2.1,3.7-3.1c-0.2-0.2,0.1-0.4-0.1-0.5
                                                    C15.9,11.8,14.5,12.8,13.4,14.2z M14,14.6c0,0.1,0.2,0.2,0.2,0.2c1.3-0.9,2.2-2.2,3.6-3c0,0.1,0.1,0.1,0.1,0.2c-1,1-2.6,1.8-3.4,3
                                                    c0.2,0.1,0.3,0.2,0.5,0.2c0.6-0.9,1.5-1.4,2.3-2c0.1,0,0.2,0,0.3,0c0.2-0.3,0.4-0.7,0.7-1.1c0.2-0.4,0.6-0.7,0.5-1.1
                                                    C17,12,15.3,13.1,14,14.6z M10.2,11.8c-0.2,1.4,0,3.2,0,4.9c2.1,0.2,3.5,0.2,5.7,0.2c0-0.2,0.1-0.2,0-0.4c-0.2-0.1-0.3,0.2-0.6,0.1
                                                    c-0.3-0.2-0.5-0.5-0.7-0.8c-1.8-0.8-2.9-2.4-3.8-4C10.6,11.8,10.4,11.8,10.2,11.8z M5.6,12.4c-0.1,1.4-0.3,3-0.3,4.2
                                                    c1.2,0.3,2.6,0.2,4,0.2c0.1-1.7,0.1-3.4,0-4.9C8.2,11.9,6.7,12.1,5.6,12.4z M19,12.6c-0.6,1.1-1.5,2-2.3,2.9c0.1,0.5,0,0.9,0.1,1.3
                                                    c1.3,0,2.8,0.3,4,0.1C20.9,15.3,19.9,13.4,19,12.6z M1.6,13.7c-0.4,0.9-0.5,2-0.7,3.1c1.2,0.1,2.4,0.1,3.6,0c0-1.1,0.4-2.8,0.2-4
                                                    C3.6,13,2.6,13.4,1.6,13.7z M15.3,15.5c0.7,0.2,1-0.8,1.5-1.2C16.2,14.6,15.6,14.9,15.3,15.5z M0.9,17.7c0,0.9,0.1,1.8,0.3,2.5
                                                    c0.9,0.7,2.1,1,3.5,1.3c0.1-1.3-0.1-2.6-0.2-3.8C3,17.7,2.1,17.6,0.9,17.7z M5.2,17.8c0.1,1.2,0.2,2.6,0.3,3.8
                                                    C6.7,21.9,8.2,22,9.6,22c-0.1-1.5-0.1-2.8-0.2-4.3c-1.2,0-2.7-0.1-4-0.1C5.3,17.6,5.2,17.7,5.2,17.8z M10.2,17.8
                                                    c0,1.5,0,2.8,0.2,4.3c1.5,0.2,3.3,0,4.9-0.2c0.4-1.1,0.6-2.7,0.6-3.9C14.3,17.7,12,17.6,10.2,17.8z M16.7,17.9
                                                    c0,1.2-0.3,2.5-0.5,3.6c1.5,0.1,2.7-0.8,4-0.9c0.4-0.7,0.6-1.6,0.6-2.6C19.4,17.8,18.3,17.9,16.7,17.9z M5.5,25.4
                                                    c-0.3-1-0.5-2.1-0.7-3.1c-1.2-0.2-2-0.6-3.1-1C2.5,23.2,3.5,24.8,5.5,25.4z M15.9,22.6c-0.3,1.1-0.7,2-1,3c2.2-0.6,3.7-2,4.8-3.8
                                                    C18.4,21.9,17.2,22.4,15.9,22.6z M5.7,22.5c0,0.5,0.2,1.2,0.3,1.8c0.1,0.5,0.3,1.3,0.6,1.5c0.3,0.3,1.2,0.3,1.8,0.5
                                                    c0.4,0.1,0.8,0.3,1.2,0.1c-0.1-0.8,0.2-2.3,0-3.5C8.2,22.8,7.1,22.7,5.7,22.5z M10.4,23c0,1.1,0.1,2.5,0,3.6c1.3,0,2.3-0.2,3.3-0.5
                                                    c0.6-1,1.1-2.1,1.4-3.4C13.6,22.9,11.8,22.9,10.4,23z"></path>
                                                </g>
                                            </svg>
                                        <span><a href="https://www.google.com/maps/place/313+S+Maclay+Ave,+San+Fernando,+CA+91340,+Hoa+K%E1%BB%B3/@34.2823229,-118.4451155,17z/data=!3m1!4b1!4m5!3m4!1s0x80c2904a5eb192a1:0x73f25f3cf0de68ba!8m2!3d34.2823229!4d-118.4429268">LOCATIONS</a></span>

                                    </a>
                                </div>
                                <div class="widget-item">
                                    <a href="#" class="widget-link">
                                        <svg width="16px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 37 47.5" style="enable-background:new 0 0 37 47.5;" xml:space="preserve">
                                                <g>
                                                    <path class="st0" d="M33,47.1c-9.1,0.9-19.8,0-29-0.2c-1.2-2-1.1-4.2-1.2-7.6c0-1.8-0.5-3.7-0.7-5.4C1.2,24,0.8,15.1,1.2,3.7
                                                        C2.6,2,5,2.6,7.3,2.5c5.9-0.2,13.1-0.4,18.4-1.7c1.5-0.3,3.5,2.9,4.5,4c1.3,1.6,2.3,3.2,3.3,4.5c-1.2,10.1,1.3,23.8,1.4,35.4
                                                        C34.1,45.4,33.6,46.3,33,47.1z M25.2,4.7c0.2-0.3,0.5-0.4,0.9-0.5c0.1-0.6-0.3-0.8-0.9-0.7C25.1,3.6,24.7,4.6,25.2,4.7z M22.4,4
                                                        C15.3,5,11.6,4.7,4,4.9c-0.8,6.5-0.1,10.8,0,17c0,2.9-0.1,5.8,0.2,8.7c0.4,2.8,0.7,5.6,1.2,8.5c-1.5,1.5-0.3,3.2,0.2,5.4
                                                        c4.6,1,10,0.2,15.1,0.5c4.2,0.2,8.4,0.7,11.8-0.2c0-11-1.9-21.4-1.7-33.5c-2.6,0.3-4.4,1.4-7.3,1.4C22.5,10,23.2,6.8,23.1,4
                                                        c-0.2,0-0.3,0-0.5,0C22.6,4,22.5,4,22.4,4z M25,6.5C25.1,7,24.7,7.9,25.2,8c0.7-0.9,2.1-1.2,2.8-2.1c-0.8,0.3-0.2-0.8-0.9-0.5
                                                        C26.7,6,26.2,6.6,25,6.5z M25.2,10.3c0.3,0.4,1.3-0.6,2.4-0.2c-0.4-1.4,1.7-1.6,1.2-2.4C27.7,8.7,26.2,9.3,25.2,10.3z"></path>
                                                    <path class="st0" d="M22.4,11.3c-0.7,1.8-3.2,0.8-4.7,0.7c-2.1-0.1-4.3-0.2-6.6-0.2c-1.7,0-3.1,0.7-4.5-0.2
                                                        c-0.3-2.4,2.6-1.8,4.5-1.7c1.9,0.1,4.4,0.2,6.6,0.2C19.4,10.1,21.9,9.4,22.4,11.3z"></path>
                                                    <path class="st0" d="M28.1,16.9c-0.5,2.1-1.8,1-3.3,0.9c-4.6-0.2-9.7,0.2-13.7,0.7c-1.3,0.2-3.5,0.9-4.2-0.7
                                                        c-0.1-1.5,1.9-1.2,2.8-1.4c3.6-0.7,8.5-0.9,12.3-0.7C24,15.8,26.9,15,28.1,16.9z"></path>
                                                    <path class="st0" d="M27.1,22.8c-0.7,1.8-2.8,0.9-4.5,0.9c-2.5,0.1-5.2,0.3-7.6,0.5c-2.9,0.3-6.2,1.8-8,0c0-1.8,1.9-1.2,3.3-1.4
                                                        c2.9-0.4,6.8-1,11.1-1.2C23.6,21.5,26.2,21.2,27.1,22.8z"></path>
                                                    <path class="st0" d="M28.8,31.1c-0.1,1.8-1.9,1-3.3,0.9c-1.3-0.1-2.9,0.2-4.2,0.2c-3.4,0-7.2-0.6-10.2-0.2c-1.6,0.2-2.8,1.3-3.8,0
                                                        c0.9-3.1,5.4-2.3,9-2.1c2.1,0.1,4.3,0,6.6,0C25.1,29.9,27.7,29.3,28.8,31.1z"></path>
                                                    <path class="st0" d="M29,37.5c-0.2,1.8-2,1-3.1,1.2c-4,0.6-8.5,1.1-13.2,1.7c-1.3,0.2-3.2,0.7-4.3-0.5c0-2.2,3.5-1.9,5.7-2.1
                                                        c3.7-0.5,7.8-0.7,11.8-0.9C27,36.7,29.2,36,29,37.5z"></path>
                                                </g>
                                            </svg>
                                        <span>CAREERS</span>
                                    </a>
                                </div>
                                <div class="widget-item">
                                    <a href="#" class="widget-link">
                                        <svg width="16px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 24 29.5" style="enable-background:new 0 0 24 29.5;" xml:space="preserve">
                                                <path class="st0" d="M10.2,10.1c1.5,2.3,2.9,4.9,4.6,7.2c0.3,0.4,0.8,1.2,1.1,1.2c0.6,0.1,1.6-0.5,2.2-0.8c1-0.4,1.9-0.9,2.7-0.6
                                                        c1.3,2.1,3.4,3.6,3.2,6.8c-0.9,1.3-2,2-3.4,3.1c-1,0.8-1.8,1.5-2.9,2.1c-0.7,0.4-2.1,0.6-3.1,0.1c-1.5-0.6-3-2.5-4.1-3.9
                                                        C9.2,23.8,8,22.5,7,20.9c-2-2.9-3.6-5.5-5-8.9c-0.5-1.1-1.3-2.9-1-4.7C1,6.8,1.7,5.6,2,5.1c0.9-1.3,2.5-2.7,3.7-3.6
                                                        C5.8,1.2,5.9,0.9,6,0.6c2.2-1.1,3.5,0.8,4.8,2.3c0.9,1,1.6,2,1.8,2.9C13.3,7.9,11.2,8.8,10.2,10.1z M7.3,1.5c0.2,0,0.2-0.1,0.3-0.2
                                                        c-0.1,0-0.2-0.1-0.3-0.1C7.2,1.4,7.3,1.3,7.3,1.5z M8.3,2.3c0.1-0.1,0.4-0.4,0.1-0.5C8.4,1.9,8.1,2.1,8.3,2.3z M5.9,2.5
                                                        c0,0.2,0.1,0.3,0.3,0.3c0-0.2,0.1-0.3,0.1-0.5C6,2.3,6,2.4,5.9,2.5z M6.9,6.9C7.2,6.8,7.3,6.4,7.3,6c0.4-1,1-2.3,0.9-3.7
                                                        C7.8,3.9,6.9,5.3,6.9,6.9z M9.1,3.1C9.3,3.2,9.4,3,9.6,3c0-0.3-0.1-0.5-0.3-0.5C9.1,2.6,9.2,2.9,9.1,3.1z M3.7,6.8
                                                        c0.6-0.5,0.7-1.5,1-2.3C4.9,4.2,5.1,3.6,5,3.3C4,3.9,4.1,5.5,3.7,6.8z M8.6,7.9c0.6,0,0.7-0.8,0.8-1.3C9.7,5.7,9.7,4.7,10.2,4
                                                        c0.2-0.1,0.2,0.1,0.3,0.1c0-0.4-0.3-0.4-0.5-0.6C9.6,5,9,6.4,8.6,7.9z M10.8,5.1c0-0.2,0.3-0.2,0.3-0.4c0-0.1-0.1-0.2-0.2-0.2
                                                        C10.8,4.7,10.6,5,10.8,5.1z M9.6,9C9,9.1,8.8,9.6,8.7,10.2c0.4,0,0.4-0.3,0.4-0.5c0.4-0.3,0.9-0.6,1.1-1.1C10.1,8.5,10,8.5,10,8.3
                                                        c0.2-1,0.7-2,0.6-3C10.3,6.5,9.8,7.6,9.6,9z M10.7,8.1c0.7-0.3,1.5-1.4,0.8-2.2C11.3,6.6,11,7.4,10.7,8.1z M6.1,6.8
                                                        c0-0.3,0-0.6-0.1-0.8C6,6.3,5.6,6.9,6.1,6.8z M7.9,7.5c0.1-0.4,0.3-1,0.2-1.3C8,6.5,7.4,7.2,7.9,7.5z M2.1,7.3
                                                        c0-0.1,0.2-0.4,0.1-0.5C2.1,6.9,1.9,7.2,2.1,7.3z M5.7,11.1c0.2-1.4,1-3.1,0.8-4.2c0,0-0.1,0-0.1,0C6.5,8.4,5.5,9.7,5.7,11.1z
                                                        M1.8,8.5C2,8.4,2.2,7.5,2,7.5C1.9,7.8,1.8,8.1,1.8,8.5z M3.6,11.3C4,10.4,4.3,8.7,4.2,7.7C3.9,8.8,3.4,10.1,3.6,11.3z M4.6,10.2
                                                        c-0.1,0.3-0.3,0.9,0.1,1c0.2-0.9,0.5-2.3,0.5-3.4C5.1,8.6,4.8,9.5,4.6,10.2z M8,9.6c0.1-0.3,0.5-0.9,0.2-1.2C8.1,8.7,7.8,9.2,8,9.6z
                                                        M2.5,9.4c0.1,0.7-0.4,1.4,0.2,1.6c0.2-0.5,0.1-1.2,0.2-1.7C2.9,9.1,2.6,9.4,2.5,9.4z M9.3,10.7c0,0.2,0.1,0.2,0.3,0.2
                                                        C9.6,10.8,9.5,10.7,9.3,10.7C9.3,10.7,9.3,10.8,9.3,10.7z M9.6,12.2c0.3,0,0.6-0.1,0.7,0.1c0.1,0.1,0,0.5,0.1,0.6c0.1,0,0.3,0,0.4,0
                                                        c-0.2-0.6-0.6-1.2-1-1.6C9.7,11.6,9.7,11.9,9.6,12.2z M5.7,12c0-0.2-0.1-0.3,0-0.5C5.4,11.4,5.2,12.1,5.7,12z M3.8,12.5
                                                        c0.1-0.2,0.2-0.4,0.1-0.7c-0.1,0-0.2,0-0.2-0.1C3.7,12,3.6,12.3,3.8,12.5z M6.9,15.3c0.3-0.8,0.7-1.9,0.8-2.7
                                                        C7.4,13.4,6.8,14.3,6.9,15.3z M5.7,15.8c-0.2,0-0.1,0.3-0.3,0.3C4.9,16,5.1,15.3,5,14.9c-0.1-0.2-0.4-0.2-0.3-0.4
                                                        c0-0.5,0.1-0.8,0-1.1c-0.9,1.4,0.4,2.8,1.1,3.7c0-1.4,0.7-2.8,0.6-3.8C6.1,14.1,5.6,14.9,5.7,15.8z M11.4,14.8
                                                        c0.2,0,0.3-0.1,0.5-0.1c0-0.2-0.2-0.4-0.3-0.5C11.6,14.5,11.4,14.5,11.4,14.8z M7.2,17.2c-0.1,0.4,0,1-0.4,1.2
                                                        c-0.5-0.2-0.3-0.6-0.3-1.1c-0.3-0.2-0.2,0.3-0.5,0.3c0.5,0.7,0.8,1.6,1.5,2.1c-0.5-1.5,0.4-3.3,0.3-4.7C7.6,15.7,7.4,16.5,7.2,17.2z
                                                        M12.1,16.1c0.3,0.1,0.7,0,0.8,0.3c0,0.3-0.1,0.5-0.1,0.8c0.4-0.1,0.7-0.1,0.9,0.1c-0.5,2.4-1.4,5.1-1.8,7.3c-0.1,0.4-0.2,1,0.3,1.1
                                                        c0.3-2.8,1-5.2,1.5-7.7c0.1-0.1,0.2-0.2,0.3-0.3c-0.6-0.8-1.1-1.7-1.8-2.5C12.2,15.5,12.1,15.8,12.1,16.1z M6.4,17
                                                        c0.3-0.3,0.4-1.2,0.3-1.6C6.6,15.9,6.5,16.5,6.4,17z M9.4,21.4c-0.1,0.4-0.3,1,0.1,1.2c0.4-2.4,1.4-4.7,1.6-7.1
                                                        C10.5,17.3,9.8,19.3,9.4,21.4z M19.7,18c-0.5,2.8-0.8,6.3-1,9c-0.2,0-0.3,0.2-0.5,0.2c-0.2-0.7-0.2-1.8-0.1-2.7
                                                        c0.1-1.6,0.4-3.6,0.5-5.2c0-0.2,0.2-0.7-0.1-0.9c-0.5,0.2,0,0.4,0,0.8c-0.7,2.8-1,6.2-1.4,9.1c0.6,0,0.6-0.5,1-0.7
                                                        c0.6-0.1,0.8-0.4,1.2-0.7c0-2.7,0.6-5.8,0.5-8.5c0.1-0.2,0.3-0.2,0.3-0.5C19.9,17.9,20,18,19.7,18z M20.6,22.3
                                                        c0.2-1,0.4-2.7,0.2-3.6C20.7,19.7,20.4,21.1,20.6,22.3z M17.3,19.2c-0.2,1.6-0.4,3.2-0.7,4.7c-0.2,1.6-0.7,3.1-0.5,4.6
                                                        c0.6,0,0.4-0.7,0.4-1c0.2-2.9,0.6-5.8,1.1-8.5c0-0.1-0.1-0.1-0.1-0.1C17.4,19.1,17.4,19.2,17.3,19.2z M16.1,20.5
                                                        c-0.6,1.8-0.8,4.3-1.1,6.3c-0.1,0.5-0.5,1.3,0.1,1.6c0.4-1.2,0.4-2.6,0.5-4c0.2-1.3,0.5-2.7,0.6-4c0-0.1-0.1-0.1-0.1-0.1
                                                        C16.1,20.3,16.1,20.4,16.1,20.5z M13.4,27.2c0.2,0.3,0.5,0.7,0.9,0.6c-0.1-2.1,0.4-5,0.9-7.2c0-0.1-0.1-0.1-0.1-0.1
                                                        C14.4,22.7,14,25.1,13.4,27.2z M10.8,21.3c0-0.1,0.2-0.5,0.1-0.5C10.8,20.9,10.6,21.2,10.8,21.3z M10.3,23.6c0-0.8,0.6-1.7,0.3-2.1
                                                        C10.6,22.1,10,22.9,10.3,23.6z M11.1,23.1c-0.1,0.5-0.3,1.3,0.1,1.4c0.2-0.9,0.5-2.2,0.4-2.9C11.5,22.1,11.2,22.6,11.1,23.1z
                                                        M19.9,26.3c0.5-0.3,1.8-0.8,1.2-1.4C21,25,21,25.3,20.8,25.4c-0.9-0.5,0.1-2.3-0.3-3C20.3,23.8,20.2,24.8,19.9,26.3z M12.8,26.5
                                                        c0.2-0.3,0.4-1.1,0.2-1.5C13.1,25.6,12.5,26.3,12.8,26.5z"></path>
                                                </svg>
                                        <span>CALL US 5555-00-444</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 item3">
                            <h3 class="widget-title">NEWS</h3>
                            <div class="widget-body">
                                <div class="widget-item">
                                    <a href="#">
                                        <img src="assets/blog-img-10-150x150.jpg">
                                    </a>
                                    <div class="widget-item-right">
                                        <a href="#">
                                            <h5>BAKING HAPPY</h5>
                                        </a>
                                        <a href="#">
                                            <p>MARCH 18, 2019</p>
                                        </a>
                                    </div>
                                </div>
                                <div class="widget-item">
                                    <a href="#">
                                        <img src="assets/blog-img-11-150x150.jpg">
                                    </a>
                                    <div class="widget-item-right">
                                        <a href="#">
                                            <h5>BREADS & PASTRIES</h5>
                                        </a>
                                        <a href="#">
                                            <p>MARCH 18, 2019</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 item4">
                            <h3 class="widget-title">INSTAGRAM</h3>
                            <div class="widget-body">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <img src="assets/home/foodter/banner_1.jpg" style="height: 52px;">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/home/foodter/cong-ty-tnhh-mtv-cai-thung-go-770415.jpg"style="height: 52px;">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/home/foodter/poster-mau10.jpg"style="height: 52px;">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/home/foodter/shop-ruou-anh-linh-770404.jpg"style="height: 52px;">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/54732207_2309061759420411_7754229395380267702_n.jpg">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/53423917_149512629413392_7621886354360448446_n.jpg">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/home/foodter/tuan-anh-chivas-770396.jpg"style="height: 52px;">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/54247961_673610903058322_5989601907598599138_n.jpg">
                                        </a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="row">
                    <div class="col-6">
                        <ul>
                            <a href="#">
                                <li>
                                    <i class="fa fa-facebook-f"></i>
                                    <span>FACEBOOK</span>
                                </li>
                            </a>
                            <a href="#">
                                <li>
                                    <i class="fa fa-instagram"></i>
                                    <span>INSTAGRAM</span>
                                </li>
                            </a>
                            <a href="#">
                                <li>
                                    <i class="fa fa-twitter"></i>
                                    <span>TWITTER</span>
                                </li>
                            </a>
                            <a href="#">
                                <li>
                                    <i class="fa fa-pinterest"></i>
                                    <span>PINTEREST</span>
                                </li>
                            </a>
                            <a href="#">
                                <li>
                                    <i class="fa fa-behance"></i>
                                    <span>BEHANCE</span>
                                </li>
                            </a>
                        </ul>
                    </div>
                    <div class="col-6 note">
                        <a href="#">
                            <span>© 2019 - Mikado - Themes. All Rights Reserved.</span>
                        </a>
                    </div>
                </div>
            </div>
        </footer>
    </section>
</container>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js" ></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js" ></script>
<script src="js/home.js"></script>
<script src="js/header.js"></script>
<script src="js/index.js"></script>
<script src="cart/index.js"></script>
<script src="js/jsfile.js"></script>
<script>
    document.getElementById('${index}').style.color="red";
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function Loadmore() {
        var amount = document.getElementsByClassName("product").length;
        $.ajax({
            url: "/demo11/Load4nextSP",
            type: "get", //send it through get method
            data: {
                exits: amount
            },
            success: function (data) {
                var row = document.getElementById("content");
                row.innerHTML += data;
            },
            error: function (xhr) {
                //Do Something to handle error
            }
        });
    }
    function getBinhLuan(id) {

        var amount = document.getElementsByClassName("product").length;


           alert(id)

        $.ajax({
            url: "/demo11/Comment",
            type: "get", //send it through get method
            data: {
                exits: id
            },
            // success: function (data) {
            //     var row = document.getElementById("content");
            //     row.innerHTML += data;
            // },
            error: function (xhr) {
                //Do Something to handle error
            }
        });
    }
    function searchByName(param){
        var txtSearch = param.value;
        $.ajax({
            url: "/demo11/SearchAjax",
            type: "get", //send it through get method
            data: {
                txt: txtSearch
            },
            success: function (data) {
                var row = document.getElementById("content");
                row.innerHTML = data;
            },
            error: function (xhr) {
                //Do Something to handle error
            }
        });
    }

    // search-box open close js code
    let navbar = document.querySelector(".navbar");
    let searchBox = document.querySelector(".search-box .bx-search");
    // let searchBoxCancel = document.querySelector(".search-box .bx-x");

    searchBox.addEventListener("click", ()=>{
        navbar.classList.toggle("showInput");
        if(navbar.classList.contains("showInput")){
            searchBox.classList.replace("bx-search" ,"bx-x");
        }else {
            searchBox.classList.replace("bx-x" ,"bx-search");
        }
    });

    // sidebar open close js code
    let navLinks = document.querySelector(".nav-links");
    let menuOpenBtn = document.querySelector(".navbar .bx-menu");
    let menuCloseBtn = document.querySelector(".nav-links .bx-x");
    menuOpenBtn.onclick = function() {
        navLinks.style.left = "0";
    }
    menuCloseBtn.onclick = function() {
        navLinks.style.left = "-100%";
    }


    // sidebar submenu open close js code
    let htmlcssArrow = document.querySelector(".htmlcss-arrow");
    htmlcssArrow.onclick = function() {
        navLinks.classList.toggle("show1");
    }
    let moreArrow = document.querySelector(".more-arrow");
    moreArrow.onclick = function() {
        navLinks.classList.toggle("show2");
    }
    let jsArrow = document.querySelector(".js-arrow");
    jsArrow.onclick = function() {
        navLinks.classList.toggle("show3");
    }
    var cart;
    var dt;
    $(document).ready(function() {
        <%String data=session.getAttribute("cart")==null?"{}":new Gson().toJson(session.getAttribute("cart"));%>

        cart =JSON.parse('<%=data%>')
        dt=  $('#cart').DataTable({
            responsive: {
                breakpoints: [
                    {name: 'bigdesktop', width: Infinity},
                    {name: 'meddesktop', width: 1480},
                    {name: 'smalldesktop', width: 1280},
                    {name: 'medium', width: 1188},
                    {name: 'tabletl', width: 1024},
                    {name: 'btwtabllandp', width: 848},
                    {name: 'tabletp', width: 768},
                    {name: 'mobilel', width: 480},
                    {name: 'mobilep', width: 320}
                ]
            }
        });
        loadCart(cart);
        $('#cart tbody .remove-product').on( 'click', function () {
            var id=$(this).attr('pid');
            thisRow=$(this);
            $.ajax({
                url:'/demo11/cart-remove',
                type:'POST',
                data:{
                    id:id
                },
                success:function (data){
                    delete cart.productList[id];
                    dt.row(thisRow.parents('tr')).remove().draw();
                    loadCart(cart)
                },
                error:function (data){
                    alert("eror")
                }
            });


        } );

        $('#cart tbody .changeQuantity').on( 'blur', function () {
            var id=$(this).attr('pid');
            var quantity=$(this).val();
            thisRow=$(this);
            $.ajax({
                url:'/demo11/cart-updateQuantity',
                type:'POST',
                data:{
                    id:id,
                    quantity:quantity
                },
                success:function (data){

                    JSQuantity=JSON.parse(data);
                    thisRow.val(JSQuantity.quantity);
                    updateQuantity(cart,id,JSQuantity.quantity)

                    loadCart(cart)
                },
                error:function (data){
                    alert("eror")
                }
            });

        } );
        loadCart1(cart);
        $('#cart tbody .remove-product').on( 'click', function () {
            var id=$(this).attr('pid');
            thisRow=$(this);
            $.ajax({
                url:'/demo11/cart-remove',
                type:'POST',
                data:{
                    id:id
                },
                success:function (data){
                    delete cart.productList[id];
                    dt.row(thisRow.parents('tr')).remove().draw();
                    loadCart(cart)
                },
                error:function (data){
                    alert("eror")
                }
            });


        } );

        $('#cart tbody .changeQuantity').on( 'blur', function () {
            var id=$(this).attr('pid');
            var quantity=$(this).val();
            thisRow=$(this);
            $.ajax({
                url:'/demo11/cart-updateQuantity',
                type:'POST',
                data:{
                    id:id,
                    quantity:quantity
                },
                success:function (data){

                    JSQuantity=JSON.parse(data);
                    thisRow.val(JSQuantity.quantity);
                    updateQuantity(cart,id,JSQuantity.quantity)

                    loadCart(cart)
                },
                error:function (data){
                    alert("eror")
                }
            });

        } );


    } );

    function loadCart(cart){
        sum=0;


        for(const x in cart.productList){
            sum+=(cart.productList[x].price);


        }





        $(".total-cart").html(sum);

    }
    function loadCart1(cart){
        sum=0;


        for(const x in cart.productList){
            sum+=(x.length-3);


        }





        $(".total-cart-gh").html(sum);

    }
    function updateQuantity(cart,id,quantity){
        cart.productList[id].quantitySol=quantity;
    }
    function changeStyle() {

        var paragraph = document.getElementsByClassName('bar');

        var changeText = paragraph[0].style.width = ${1000/auth.hide} ;
        var changeText = paragraph[1].style.color = "red";
    }

</script>
</body>
</html>
