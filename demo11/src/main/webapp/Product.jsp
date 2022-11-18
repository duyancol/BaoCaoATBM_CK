<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 06/04/2022
  Time: 7:00 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
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
</head>
<body>
<section style="z-index: inherit" class="align-items-center bg-img bg-img-fixed" id="drink-menu-section">
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
                        <a href="./ds_spY.html">
                            <button data-food-type="salad">
                                <!-- <span data-food-type="salad" class="text_product"> Từ 120$-300$</span> -->
                                Vang Ý
                            </button>
                        </a>


                    </div>
                    <div class="zoom play-on-scroll delay-4">
                        <a href="./ds_spP.html">
                            <button data-food-type="lorem">

                                <!-- <span data-food-type="lorem" class="text_product"> Từ 300$-1000$</span> -->
                                Vang Pháp
                            </button>
                        </a>

                    </div>
                </div>



                <div class="product_right" >
                    <div class="zoom play-on-scroll delay-6">
                        <a href="./ds_spD.html">
                            <button data-food-type="ipsum">
                                Vang Đức
                            </button>
                        </a>
                    </div>
                    <div class="zoom play-on-scroll delay-8">
                        <a href="./ds_spN.html">
                            <button data-food-type="dolor">
                                Vang Nhật
                            </button>
                        </a>
                    </div>
                </div>
            </div>


            <div class="drink-item-wrap all">
                <c:forEach items="${pdlist}" var="p">
                <div class="drink-item salad-type" style="z-index: 100" >
                    <div>
                            <span style="position: absolute;background-color: red;width: 100px;height: 50px;z-index: 99;border-radius: 5px;margin-top:15%;font-weight: bold ;color: white;;">Giảm 20% !</span>
                    </div>



                    <div class="item-wrap bottom-up play-on-scroll">
                        <div class="item-img " style="height: 65%;" >
                                <!-- <div class="img-holder bg-img"> -->
                                <img src="${p.img}" alt="" class="img-holder bg-img">
                                <!-- </div> -->
                                <!-- <div class="item-img " style="height: 300px;">
                                    <div class="img-holder bg-img"
                                        style="background-image: url('assets/home/ads/home11_1.jpg');"></div>
                                </div> -->


                        </div>


                            <p>$600 còn $<span style="padding: 0;margin: 10px 0px;color: red;">${p.price}</span></p>


                            <div>
                                <div>
                                    <a href="#" style="margin-top: 140px;text-decoration: none;color: #000;">  ${p.name}>
                                    </a>
                                </div>
                            </div>

                            <input type="number" name="soluong" min="1" max="10" value="1" style="border-radius: 5px;width: 40px;">



                            <a href="sanpham.html"><button>Xem</button></a>
                            <button
                            ><i class='bx bx-cart-alt' style="font-size: 20px;"><a href="cart-add?id=${p.id}">DAT HANG</a></i></button>

                        </div>


                    </div>





                </c:forEach>
            </div>


        </div>
    </div>
    </div>
</section>
<%--<script src="js/home.js"></script>--%>
<%--<script src="js/header.js"></script>--%>
<script src="js/index.js"></script>
<%--<script src="cart/index.js"></script>--%>
</body>
</html>
