<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 17/04/2022
  Time: 10:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="dentail.css">
    <link rel="stylesheet" href="css/detail.css">
    <link rel="stylesheet" href="css/comment.css">
    <link rel="stylesheet" href="css/listComment.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class = "card-wrapper">
    <div class = "card" style="display: grid">
        <!-- card left -->
        <div class = "product-imgs"style="width: 400px">
            <div class = "img-display ">
                <div class = "img-showcase">
                    <img src = "${details.img}" alt = "shoe image">
                    <img src = "${details.img}" alt = "shoe image">
                    <img src = "${details.img}" alt = "shoe image">
                    <img src = "${details.img}" alt = "shoe image">
                </div>
            </div>
            <div class = "img-select">
                <div class = "img-item">
                    <a href = "#" data-id = "1">
                        <img src = "${details.img}" alt = "shoe image">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "2">
                        <img src = "${details.img}" alt = "shoe image">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "3">
                        <img src = "${details.img}" alt = "shoe image">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "4">
                        <img src = "${details.img}" alt = "shoe image">
                    </a>
                </div>
            </div>
        </div>
        <!-- card right -->
        <div class = "product-content">
            <h2 class="layid">${details.id}</h2>

            <h2 class = "product-title">${details.name}</h2>
            <a href = "#" class = "product-link">${pdlistcc.namecategogy}</a>
            <div class = "product-rating">
                <i class = "fas fa-star"></i>
                <i class = "fas fa-star"></i>
                <i class = "fas fa-star"></i>
                <i class = "fas fa-star"></i>
                <i class = "fas fa-star-half-alt"></i>
                <span>4.7(21)</span>
            </div>

            <div class = "product-price">
                <p class = "last-price">Old Price: <span>${details.price}$  </span></p>
                <p class = "new-price">New Price: <span>${details.price-(details.price*details.saleprice/100)}$(${details.saleprice}%)</span></p>
            </div>

            <div class = "product-detail">
                <h2>about this item: </h2>
                <p>${details.mota}</p>

<%--                <ul>--%>
<%--                    <li>Color: <span>Black</span></li>--%>
<%--                    <li>Available: <span>in stock</span></li>--%>
<%--                    <li>Category: <span>Shoes</span></li>--%>
<%--                    <li>Shipping Area: <span>All over the world</span></li>--%>
<%--                    <li>Shipping Fee: <span>Free</span></li>--%>
<%--                </ul>--%>
            </div>

            <div class = "purchase-info">
                <input type = "number" min = "0" value = "1">
                <c:if test="${details.quantity==0.0}">
                    <button type = "button" class = "btn" style="background: #9a9898">
                        The product is out of stock <i class = "fas fa-shopping-cart"></i>
                    </button>
                </c:if>
                <c:if test="${details.quantity>0.0}">
                    <a href="cart-add?id=${details.id}">



                        <button type = "button" class = "btn">
                            Add to Cart <i class = "fas fa-shopping-cart"></i>
                        </button>
                    </a>
                </c:if>

                <button type = "button" class = "btn">Compare</button>
            </div>

            <div class = "social-links">
                <p>Share At: </p>
                <a href = "#">
                    <i class = "fab fa-facebook-f"></i>
                </a>
                <a href = "#">
                    <i class = "fab fa-twitter"></i>
                </a>
                <a href = "#">
                    <i class = "fab fa-instagram"></i>
                </a>
                <a href = "#">
                    <i class = "fab fa-whatsapp"></i>
                </a>
                <a href = "#">
                    <i class = "fab fa-pinterest"></i>
                </a>
            </div>
        </div>

    </div>
</div>
<section class="detail-product">
    <div class="container">

        <div class="description">
            <input class="input" type="radio" checked name="box" id="box1">
            <input class="input" type="radio" name="box" id="box2">
            <%--            <input class="input" type="radio" name="box" id="box3" onclick="commentList()">--%>
            <input class="input" type="radio" name="box" id="box3"  value="post" onclick="commentL('${m.commentid}','${details.id}')" >


            <nav>
                <ul>
                    <li><label for="box1" class="check1">Detail</label></li>
                    <li><label for="box2" class="check2">Detail</label></li>

                    <li><label  for="box3" class="check3"><a href="Comment?id=${o.id}">Comment( ${ttalcom} )</a></label></li>


                </ul>
            </nav>
            <section class="box-des">
                <div class="box1">
                    <h2>Description 1</h2>
                    <p>${details.mota}<
                    </p>
                </div>
                <div class="box2">
                    <h2>Description 2</h2>
                    <ul>
                        <li>
                            tet
                        </li>
                    </ul>
                </div>
                <div class="box3">
                    <h2>Description 3</h2>
<%--                    <form name="myform">--%>
<%--                        <input type="text" name="username"><br>--%>

<%--                        <textarea style="width: 300px;height: 100px" name="content">--%>

<%--                   </textarea>--%>
<%--                        <input type="button" value="post" onclick="comment('${details.id}')">--%>
<%--                    </form>--%>
<%--                    <div id="mycomment">--%>

<%--                    </div>--%>


                    <div class="ScriptTop">
                        <div class="rt-container">
                            <div class="col-rt-4" id="float-right">

                            </div>
                            <div class="col-rt-2">
                                <ul>
                                    <li><a href="https://codeconvey.com/Tutorials/css3-animated-navigation">Previous Demo</a></li>
                                    <li><a href="https://codeconvey.com/css-comment-box">Back to the Article</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <header class="ScriptHeader">
                        <div class="rt-container">
                            <div class="col-rt-12">
                                <div class="rt-heading">
                                    <h1>DEMO: CSS Comment Box Form</h1>
                                    <h2>With Feedback Style</h2>
                                </div>
                            </div>
                        </div>
                    </header>

                    <section>
                        <div class="rt-container">
                            <div class="col-rt-12">

                                <div class="content">
                                    <h2 class="mytext">(0) Readers Comments </h2>

                                    <div id="mycomment" class="tongbl">

                                    </div>
                                    <div id="respond">
                                        <h3>Leave A Response</h3>
                                        <p>Your email address will not be published with your comments.</p>
                                                            <form id="nameform" method="post" class="nameform" name="myform">
                                                                <div class="commentfields">
                                                                    <label class="name">Name <span>*</span></label>
                                                                    <input name="username" id="cname" class="comment-input required" type="text" >
                                                                </div>

                                                                <div class="commentfields">
                                                                    <label>Comments <span>*</span></label>
                                                                    <textarea id="ccomment" class="comment-textarea required" name="content"></textarea>
                                                                </div>
                                                                <div class="commentfields">
                                                                    <input class="commentbtn" type="button" value="post" onclick="comment('${details.id}')" >
                                                                </div>
                                                            </form>
                                        <form  method="post" class="nameform" name="myreform">
                                            <div class="commentfields">
                                                <label class="name">Name <span>*</span></label>
                                                <input name="reusername"  class="comment-input required" type="text" >
                                            </div>

                                            <div class="commentfields">
                                                <label>Comments <span>*</span></label>
                                                <textarea  class="comment-textarea required" name="recontent"></textarea>
                                            </div>
                                            <div class="commentfields">
                                                <input class="commentbtn" type="button" value="post" onclick="recomment('${details.id}')" >
                                            </div>
                                        </form>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>

                </div>
            </section>
        </div>
    </div>
</section>


<jsp:include page="fooder.jsp"></jsp:include>

<script src="dentail.js"></script>
<script type="text/javascript">


    function comment(id){
        var xhttp;
        var username =document.myform.username.value;
        var content=document.myform.content.value;


        var url ="Comment?content="+content+"&id="+id+"&username="+username;
        if(window.XMLHttpRequest){
            xhttp= new XMLHttpRequest();
        }else{
            xhttp= new ActiveXObject("Microsoft.XMLHTTP")
        }
        xhttp.onreadystatechange=function ()
        {
            if (xhttp.readyState==4){
                var data =xhttp.responseText;
                document.getElementById("mycomment").innerHTML=data;
            }

        }
        xhttp.open("POST",url,true);
        xhttp.send();
    }
    function commentL(commentid,id){
        var xhttp;
        var username =document.myform.username.value;
        var content=document.myform.content.value;

var t=2;
        var amount = document.getElementsByClassName("layid");
        var url ="listComent?content="+content+"&id="+id+"&username="+username;
        if(window.XMLHttpRequest){
            xhttp= new XMLHttpRequest();
        }else{
            xhttp= new ActiveXObject("Microsoft.XMLHTTP")
        }
        xhttp.onreadystatechange=function ()
        {
            if (xhttp.readyState==4){
                var data =xhttp.responseText;
                document.getElementById("mycomment").innerHTML=data;
            }

        }
        xhttp.open("POST",url,true);
        xhttp.send();
    }

    function recomment(id){

        alert(id);
        var xhttp;
        var username =document.reform.reusername.value;
        var content=document.reform.recontent.value;


        var url ="TLCommentControler?commentid="+id+"&content="+content+"&username="+username;
        if(window.XMLHttpRequest){
            xhttp= new XMLHttpRequest();
        }else{
            xhttp= new ActiveXObject("Microsoft.XMLHTTP")
        }
        xhttp.onreadystatechange=function ()
        {
            // if (xhttp.readyState==4){
            //     var data =xhttp.responseText;
            //      document.getElementById("mycomment").innerHTML="tést";
            // }

        }
        xhttp.open("POST",url,true);
        xhttp.send();
    }

    function click(){
        var my =document.getElementsByClassName("test");
        my.innerHTML="Duy";
    }
    function changeText(){
        var mytext = document.getElementsByClassName('mytext');
        var test =document.getElementsByClassName('cs').length;
        mytext[0].innerHTML = "("+test+")Read Comment";
    }
    function showAlert(commentid,id) {
        // var message = "Đây là cảnh báo!"+commentid+id;
        // alert(message);
        var xhttp;
        var username =document.myform.username.value;
        var content=document.myform.content.value;

        var url ="listComent?commentid="+commentid+"content="+content+"&id="+id+"&username="+username;
        if(window.XMLHttpRequest){
            xhttp= new XMLHttpRequest();
        }else{
            xhttp= new ActiveXObject("Microsoft.XMLHTTP")
        }
        xhttp.onreadystatechange=function ()
        {
            if (xhttp.readyState==4){
                var data =xhttp.responseText;
                document.getElementById("mycomment").innerHTML=data;
            }

        }
        xhttp.open("POST",url,true);
        xhttp.send();
    }

</script>

</body>
</html>
