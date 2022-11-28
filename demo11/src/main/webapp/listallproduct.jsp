
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/7/2022
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Savannah Cafe | Products</title>

    <!-- Site Icon -->
<%--    <link rel="shortcut Icon" type="image/png" href="product_app/img/favicon.png">--%>

    <!-- Font Awesome Icons -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Kanit&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link href="product_app/css/style.css" rel="stylesheet">
</head>
<body id="page-top">

<jsp:include page="header.jsp"></jsp:include>
<section class="page-section">
    <div class="container">
        <div class="row">

            <div class="col-lg-3 blog-form">
                <h2 class="blog-sidebar-title"><b>Cart</b></h2>
                <hr />
                <p class="blog-sidebar-text">No products in the cart...</p>
                <div>&nbsp;</div>
                <div>&nbsp;</div>

                <h2 class="blog-sidebar-title"><b>Categories</b></h2>
                <hr />
                <c:forEach items="${pdlistcc}" var="o">
                <a href="ADMIN-P?idcategogy=${o.idcategogy}">
                    <p class="blog-sidebar-list"><b><span class="list-icon"> > </span> ${o.namecategogy}</b></p>
                </a>
                </c:forEach>


                <div>&nbsp;</div>
                <div>&nbsp;</div>

                <h2 class="blog-sidebar-title"><b>Filter</b></h2>
                <hr />

                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search" aria-label="Receipient's username" aria-describely="basic-addon2">
                    <div class="input-group-append">
                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-search"></i></span>
                    </div>

                </div>

                <p class="tags">Price $4 - $25</p>
                <button type="button" class="btn btn-dark btn-lg">Filter</button>

                <div>&nbsp;</div>
                <div>&nbsp;</div>
                <h2 class="blog-sidebar-title"><b>Tags</b></h2>
                <p class="product-sidebar-list"><b>#accessory, #arabica</b></p>
                <p class="product-sidebar-list"><b>#candy, #bean, #cup</b></p>
                <p class="product-sidebar-list"><b>#ethopian, #latte</b></p>


            </div>
            <!--END  <div class="col-lg-3 blog-form">-->

            <div class="col-lg-9" style="padding-left: 30px;">
                <div class="row">
                    <div class="col">
                        Showing all 9 results
                    </div>

                    <div class="col">
                        <select class="form-control">
                            <option value="">Default Sorting</option>
                            <option value="popularity">Sorting by popularity</option>
                            <option value="average">Sorting by average</option>
                            <option value="latest">Sorting by latest</option>
                            <option value="low">Sorting by low</option>
                            <option value="high">Sorting by high</option>
                        </select>
                    </div>

                </div>
                <!-- Sorting by <div class="row"> -->
                <div>&nbsp;</div>
                <div>&nbsp;</div>

                <div class="row">
<c:forEach items="${pdlist}" var="p">
                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card">
                            <div class="card-body text-center">
                                <img src="${p.img}" class="product-image">
                                <h5 class="card-title"><b>Accessory</b></h5>
                                <p class="card-text small">${p.name}</p>
                                <p class="tags">${p.price}</p>
                                <a href="https://api.whatsapp.com/send?phone=2348162667912" target="_blank" class="btn btn-success button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to cart</a>
                            </div>
                        </div>
                    </div>

</c:forEach>


                </div>
                <!-- Sorting by <div class="row"> -->



            </div>
            <!--END  <div class="col-lg-9">-->

        </div>
    </div>
</section>


<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>




<jsp:include page="fooder.jsp"></jsp:include>


<!-- Bootstrap JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


</body>
</html>
