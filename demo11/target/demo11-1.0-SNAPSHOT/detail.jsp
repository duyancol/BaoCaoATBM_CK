<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 13/04/2022
  Time: 7:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/detail.css">

</head>
<body>

<section class="detail-product">
    <div class="container">

        <div class="description">
            <input class="input" type="radio" checked name="box" id="box1">
            <input class="input" type="radio" name="box" id="box2">
<%--            <input class="input" type="radio" name="box" id="box3" onclick="commentList()">--%>
            <input class="input" type="radio" name="box" id="box3" onclick="commentList()">
            <nav>
                <ul>
                    <li><label for="box1" class="check1">Detail</label></li>
                    <li><label for="box2" class="check2">Detail2</label></li>

                        <li><label  for="box3" class="check3"><a href="Comment?id=${o.id}">Detail3</a></label></li>


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
                    <form name="myform">
                        <input type="text" name="username"><br>

                        <textarea style="width: 300px;height: 100px" name="content">

                   </textarea>
                        <input type="button" value="post" onclick="comment()">
                    </form>
                    <div id="mycomment">

                    </div>

                </div>
            </section>
        </div>
    </div>
</section>
<script type="text/javascript">
    function comment(){
        var xhttp;
        var username =document.myform.username.value;
        var content=document.myform.content.value;


        <%--var id=document.myform.id.valueOf(${o.id});--%>
        var url ="Comment?content="+content+"&username="+username;
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
    function commentList(){
        var xhttp;
        var content=document.myform.id.value;

        var url ="listComent?content="+"&username="+"&id="
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
        xhttp.open("POST",url,false);
        xhttp.send();
    }


</script>


</body>
</html>
