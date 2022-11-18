<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 28/03/2022
  Time: 9:06 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>






<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title >  PanaDeria</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    <link rel="stylesheet"--%>
<%--          href="slider.css">--%>
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="css/home.css">
</head>
<body>

<div class="container margin-content">
    <!-- container--banner -->
    <div class="container--banner_ads">
        <div class="container--banner_button_prev">
            <button class="title_font">

                </br>
                <i class="fas fa-angle-left" style="font-size: 40px;"></i>
            </button>
        </div>

        <div class="container--banner_content_grid animation_apper" id="container--banner_content_1">
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home1.jpg" alt="">
            </div>
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home2.jpg" alt="">
            </div>
            <div class="container--banner_content_grid_12">
                <img src="assets/home/ads/hom3.jpg" style="height: 515px;object-fit: cover;" alt="">
            </div>
            <div class="container--banner_content_ads_item_text container--banner_content_grid_11">
                <h3>don't miss</h3>
                <h1>Don't miss your breakfast in my bakery</h1>
                <a href="">
                    <button class="read_more">read more</button>
                </a>
            </div>
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home4.jpg" alt="">
            </div>
        </div>

        <div class="container--banner_content_grid hidden" id="container--banner_content_2">
            <div class="container--banner_content_grid_22">
                <img src="assets/home/ads/home5.jpg" alt="">
            </div>
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home6.jpg" alt="">
            </div>
            <div class="container--banner_content_ads_item_text container--banner_content_grid_11">
                <h3>don't miss</h3>
                <h1>Deserts cake ?
                    </br>
                    Why don't !</h1>
                <a href="">
                    <button class="read_more">read more</button>
                </a>
            </div>
        </div>

        <div class="container--banner_content_grid hidden" id="container--banner_content_3">
            <div class="container--banner_content_grid_12">
                <img src="assets/home/ads/home7.jpg" alt="">
            </div>
            <div class="container--banner_content_ads_item_text container--banner_content_grid_11">
                <h3>don't miss</h3>
                <h1>Your children like cookie ?</h1>
                <a href="">
                    <button class="read_more">read more</button>
                </a>
            </div>
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home8.jpg" alt="">
            </div>
            <div class="container--banner_content_grid_12">
                <img src="assets/home/ads/home8.png" style="width: 200px;height: 245px;" alt="">
            </div>
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home9.jpg" style="width: 200px;height: 245px;" alt="">
            </div>
        </div>

        <div class="container--banner_content_grid hidden" id="container--banner_content_4">
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home10.jpg" alt="">
            </div>
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home11_1.jpg" style="height: 245px;" alt="">
            </div>
            <div class="container--banner_content_ads_item_text container--banner_content_grid_12" style="padding: 0;">
                <h3>don't miss</h3>
                <h1>cake for every season in year</h1>
                <a href="">
                    <button class="read_more">read more</button>
                </a>
            </div>
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home12.jpg" alt="" style="height: 245px;">
            </div>
            <div class="container--banner_content_grid_11">
                <img src="assets/home/ads/home13.jpg" alt="" style="height: 245px">
            </div>
        </div>

        <div class="container--banner_button_next">
            <button class="title_font">
                <i class="fas fa-angle-right" style="font-size: 40px;"></i>


            </button>
        </div>

    </div>

    <div class="container--banner_feedback container--banner_feedback_ele_bg">
        <div class="container--banner_feedback_ele" id="feedback_1">
            <div class="feedback_star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>

        </div>
        <div class="container--banner_feedback_ele hidden" id="feedback_2">
            <div class="feedback_star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>

        </div>

        <div class="container--banner_feedback_ele hidden" id="feedback_3">
            <div class="feedback_star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>

        </div>

        <div class="container--banner_feedback_ele hidden" id="feedback_4">
            <div class="feedback_star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>

        </div>

        <!-- <div class="feedback_target">
            <button id="select_feedback_1" onclick="selectedFeedback(1)" class="feedback_target_button selected_feedback_button"></button>
            <button id="select_feedback_2" onclick="selectedFeedback(2)" class="feedback_target_button"></button>
            <button id="select_feedback_3" onclick="selectedFeedback(3)" class="feedback_target_button"></button>
            <button id="select_feedback_4" onclick="selectedFeedback(4)" class="feedback_target_button"></button>
        </div> -->

    </div>



</div>



<div class="footer_container">
    <img src="assets/client/client-1.png" class="image_medal">
    <img src="assets/client/client-2.png" class="image_medal">
    <img src="assets/client/client-3.png" class="image_medal">
    <img src="assets/client/client-4.png" class="image_medal">
    <img src="assets/client/client-5.png" class="image_medal">
    <img src="assets/client/client-6.png" class="image_medal">
</div>
</section>


</body>
</html>
