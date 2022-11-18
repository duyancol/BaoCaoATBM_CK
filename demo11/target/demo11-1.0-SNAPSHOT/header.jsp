<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/04/2022
  Time: 4:01 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.google.gson.Gson" %>

<html>
<head>
    <title>Header</title>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <link href="https://unpkg.com/boxicons@2.1.0/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" >
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="cart/css/style.css">
</head>
<body>
<div class="paging">
    <c:forEach begin="1" end="${end}" var="i">
        <a href="#">${i}</a>

    </c:forEach>

</div>

<div class="search">
    <c:forEach items="${list}"  var="o">
        <a href="#">${o.name}</a>

    </c:forEach>
    <div class="paging">
        <c:forEach begin="1" end="${end}" var="i">
            <a href="SearchControl?index=${i}&txtSearch=${txt}">${i}</a>

        </c:forEach>

    </div>

</div>
<%--<c:set var="auth" value="${sessionScope.auth}"/>--%>
<%--<c:if test="${auth == null}">--%>
<%--    <p>Vui long dang nhap</p>--%>
<%--</c:if>--%>
<%--<c:if test="${auth !=null}">--%>
<%--    <p>Xin Chao ${auth.username}</p>--%>
<%--    <c:if test="${auth.role>=1}">--%>
<%--        <p>Vao  trang quan tri</p>--%>
<%--    </c:if>--%>
<%--</c:if>--%>
<div id="showcart" style="margin-top: 400px;margin-right: 200px;z-index: 99;">
<%--    <table style="">--%>
<%--        <tr>--%>
<%--            <th>STT</th>--%>
<%--            <th>Hình</th>--%>
<%--            <th>Tên sản phẩm</th>--%>
<%--            <th>Đơn giá</th>--%>
<%--            <th>Số lượng</th>--%>
<%--            <th>Thành tiền ($)</th>--%>
<%--            <th>Xoa</th>--%>
<%--        </tr>--%>
<%--        <tbody id="myCart">--%>

<%--        </tbody>--%>
<%--    </table>--%>
    <table id="cart1" class=" table table-hover"  style="margin-left: 0" >
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
        <tbody>
        <c:set var="products" value="${cart.productList}"/>
        <c:forEach items="${products}" var="product">

            <tr>
                <td>1</td>
                <td><img src="${product.img}" alt=""></td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                    <%--                            <td>${product.quantitySol}</td>--%>
                <td>
                    <input class="changeQuantity" pid="${product.id}" type="number" value="${product.quantitySol}">
                </td>
                <td><div class="total-product">${product.totalMoney}</div></td>

                    <%--                        <td><button   style="border-radius: 5px;" class="remove-product" pid="${product.id}">Xóa</button></td>--%>
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
    <form action="SearchControl?index=1" method="post">
        <input name="txtSearch"
                type="text" id="search_cake_query" placeholder="Enter name of cake !">
        <input class="searchBt" type="submit" name="btnGo" value="Go">

    </form>


</div>

<div class="header boxcenter">
    <div class="header--contact padding-content">
        <div class="header--contact__phone">

            <i class='bx bx-phone-call'style="font-size: 20px;"></i>
           <b class="b" > call us 03-087-0976</b>
            <img src="assets/icon/email.png" style="height: 20px;width: 20px;margin-left: 2%;margin-right: 10px;" alt="">
            <b class="b" >nn@gmail.com</b>
        </div>

        <div class="header--contact__">
            <a href="">
                <div class="header--contact__about" >
<%--                    <a href="" class="icon" style="margin-right: 6px;" ><i class='bx bxs-user adminicon ' ></i></a>--%>



                </div>
            </a>
<%--            <a href="">--%>
<%--                <div class="header--contact__careers">--%>
<%--                    <i class='bx bxs-note' style="font-size: 20px;"></i>--%>
<%--                    <span style="position: relative; top:-3px;margin-left: 10px;">Orders</span>--%>
<%--                </div>--%>
<%--            </a>--%>

            <a href="">
                <div class="header--contact__locations">
                    <i class='fas fa-globe-americas' style="font-size: 20px;"></i>
                    <span style="position: relative; top:-3px;margin-left: 10px;">location</span>
                </div>
            </a>
            <a href="" class="icon" style="margin-right: 6px;" ><i class='bx bxs-user adminicon ' ></i></a>
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
<%--                    --%>


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
        <!-- <div class="header--navbar_item"><a href="">home</a></div>
        <div class="header--navbar_item"><a href="">blog</a></div>
        <div class="header--navbar_item"><a href="#foos">portfolio</a></div>
        <div class="header--navbar_item"><a href="">shop</a></div> -->
        <!-- <div class="container1 header--navbar_item ">
            <section></section>
            <nav>
                <ul>
                    <li>HOME</li>
                    <li>PRODUCT
                        <ul>
                            <li>tivi</li>
                            <li>điện thoại</li>
                        </ul>
                    </li>
                    <li>ABOUT US</li>
                    <li>shop
                        <ul>
                            <li>tivi</li>
                            <li>điện thoại</li>
                        </ul>
                    </li>

                    <li>CONTACT</li>
                </ul>

            </nav>
        </div> -->
        <div class="wrapper header--navbar_item">
            <div class="header1">
                <nav>
                    <div class="navbar">
                        <i class='bx bx-menu'></i>

                        <div class="nav-links">
                            <ul class="links">
                                <li><a href="#">HOME</a></li>
                                <li>
                                    <a href="#">Categogy</a>
                                    <i class='bx bxs-chevron-down htmlcss-arrow arrow  '></i>
                                    <ul class="htmlCss-sub-menu sub-menu">
                                        <c:forEach items="${pdlistcc}" var="cate">
                                            <li><a href="ADMIN-P?idcategogy=${cate.idcategogy}">${cate.namecategogy}</a></li>

                                        </c:forEach>
                                        <li class="more">
                <span><a href="#">More</a>
                <i class='bx bxs-chevron-right arrow more-arrow'></i>
              </span>


                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Trademark</a>
                                    <i class='bx bxs-chevron-down js-arrow arrow '></i>
                                    <ul class="js-sub-menu sub-menu">
                                        ts<c:forEach items="${listTra}" var="t">
                                        <li style="border-bottom: #939091 solid 1px;">
                                            <a href="ListCateGory?nametrademark=${t.nametrademark}">
                                                <img src="${t.imgtrademark}" style="width: 60px;height: 50px"> ${t.nametrademark}
                                            </a>
                                        </li>
                                    </c:forEach>
                                    </ul>
                                </li>
                                <li><a href="#">Shop</a></li>
                                <li>
                                    <a href="#">About</a>
                                    <i class='bx bxs-chevron-down js-arrow arrow '></i>
                                    <ul class="js-sub-menu sub-menu" style="width: 400%">

                                        <li style="border-bottom: #939091 solid 1px;"><a href="renew">  Recipe recipe</a></li>
                                        <li style="border-bottom: #939091 solid 1px;"><a href="newdetail">  News</a></li>

                                    </ul>
                                </li>
                                <li><a href="#">Contact</a></li>
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

            </div>
        </div>

    </div>
</div>

<script src="js/home.js"></script>
<script src="js/header.js"></script>

<script src="cart/index.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js" ></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js" ></script>
<script>
    var cart;
    var dt;
    $(document).ready(function() {
        <%String data=session.getAttribute("cart")==null?"{}":new Gson().toJson(session.getAttribute("cart"));%>

        cart =JSON.parse('<%=data%>')
        dt=  $('#cart1').DataTable({
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
        $('#cart1 tbody .remove-product').on( 'click', function () {
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

        $('#cart1 tbody .changeQuantity').on( 'blur', function () {
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
        $('#cart1 tbody .remove-product').on( 'click', function () {
            var id=$(this).attr('pid');
            thisRow=$(this);
            // $.ajax({
            //     url:'/demo11/cart-remove',
            //     type:'POST',
            //     data:{
            //         id:id
            //     },
            //     success:function (data){
            //         delete cart.productList[id];
            //         dt.row(thisRow.parents('tr')).remove().draw();
            //         loadCart(cart)
            //     },
            //     error:function (data){
            //         alert("eror")
            //     }
            // });


        } );

        $('#cart1 tbody .changeQuantity').on( 'blur', function () {
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


</script>
</body>

</html>
