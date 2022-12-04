<%--
  Created by IntelliJ IDEA.
  User: LAPTOP USA PRO
  Date: 11/30/2022
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.google.gson.Gson" %>

<%
    String username = (String) request.getAttribute("username");
    String phone = (String) request.getAttribute("phone");
    String email = (String) request.getAttribute("email");
    String adress = (String) request.getAttribute("adress");
    String listoder = (String) request.getAttribute("listoder");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/manager.css" rel="stylesheet" type="text/css"/>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" >
    <link href="product_app/css/style.css" rel="stylesheet">

    <%--    <link href="css/manager.css" rel="stylesheet" type="text/css"/>--%>
    <%--    <link rel="stylesheet" href="admin.css">--%>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .dialog {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 10;
            display: flex;
            align-items: center;
            justify-content: center;
            visibility: hidden;
            opacity: 0;
            transition: opacity linear 0.2s;
        }

        .overlay-close {
            position: absolute;
            width: 100%;
            height: 100%;
            cursor: default;
        }

        .dialog:target {
            visibility: visible;
            opacity: 1;
        }


        .overlay {
            background-color: rgba(0, 0, 0, 0.3);
        }

        .dialog-body {
            max-width: 400px;
            position: relative;
            padding: 16px;
            background-color: #fff;
        }

        .dialog-close-btn {
            position: absolute;
            top: 2px;
            right: 6px;
            text-decoration: none;
            color: #333;
        }
        body {
            background: #eecda3;
            background: -webkit-linear-gradient(to right, #eecda3, #ef629f);
            background: linear-gradient(to right, #eecda3, #ef629f);
            min-height: 100vh;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Edit <b>Product</b></h2>
                </div>
                <div class="col-sm-6">
                </div>
            </div>
        </div>
    </div>
    <div id="editEmployeeModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <form >

                    <c:set var="auth" value="${sessionScope.auth}"/>


                    <div class="modal-header">
                        <h4 class="modal-title">Edit Product</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Tên khách hàng : <%=username%></label>
                            <input name="username" type="text" class="form-control" required value=" <%=username%>">
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại : </label>
                            <input name="phone" type="text" class="form-control" required value="0377155498" >
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ : <%=adress%></label>
                            <input name="adress" type="text" class="form-control" required value="<%=adress%>" >
                        </div>
                        <div class="form-group">
                            <label>Email : <%=email%></label>
                            <input name="email" type="text" class="form-control" required value="<%=email%>" >
                        </div>
                        <div class="form-group">
                            <label>Sản phẩm : <%=listoder%></label>
                            <input name="listoder" type="text" class="form-control" required value="<%=listoder%>" style="display: none">
                        </div>
                        <label>Tổng số tiền : <div class="total-cart" >


                        </div>

                        </label>$





                    </div>
                    <div class="modal-footer">

                        <a href="#my-dialog" class="btn btn-dark rounded-pill py-2 btn-block"style="background: #65e865">Identity verification</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="dialog overlay" id="my-dialog">
        <a href="#" class="overlay-close"></a>

        <div class="dialog-body">
            <a class="dialog-close-btn" href="#">&times;</a>
            <div class="modal-content">
                <form action="DownloadHoaDon" method="post">
                    <div class="modal-header" >
                        <h4 class="modal-title" >Xác thực</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <c:set var="auth" value="${sessionScope.auth}"/>
                        <div class="form-group" style="display: none">
                            <label>Email</label>
                            <input name="email" type="text" class="form-control" value="${auth.email}" required>
                        </div>
                            <img src="assets/images.png"  style="margin-left: 45px">
                        <div class="modal-header">

                            <h2 class="modal-title" style="justify-content: center">Bạn cần xác thực danh tính để đặt</h2>
                                <br>

<%--                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
                        </div>
                        <div class="modal-body" style="display: none">
                            <div class="form-group">
                                <label>Tên khách hàng : <%=username%></label>
                                <input name="username" type="text" class="form-control" required value=" <%=username%>">
                            </div>
                            <div class="form-group">
                                <label>Số điện thoại : <%=phone%></label>
                                <input name="phone" type="text" class="form-control" required value="<%=phone%>" >
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ : <%=adress%></label>
                                <input name="adress" type="text" class="form-control" required value="<%=adress%>" >
                            </div>
                            <div class="form-group">
                                <label>Email : <%=email%></label>
                                <input name="email" type="text" class="form-control" required value="<%=email%>" >
                            </div>
                            <div class="form-group">
                                <label>Sản phẩm : <%=listoder%></label>
                                <input name="listoder" type="text" class="form-control" required value="<%=listoder%>" >
                            </div>


                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-success"  value="Continue">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="js/manager.js" type="text/javascript"></script>
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
        dt=  $('#cart').DataTable({
            paging:false,
            searching:false,

            // responsive: {
            //     breakpoints: [
            //         {name: 'bigdesktop', width: Infinity},
            //         {name: 'meddesktop', width: 1480},
            //         {name: 'smalldesktop', width: 1280},
            //         {name: 'medium', width: 1188},
            //         {name: 'tabletl', width: 1024},
            //         {name: 'btwtabllandp', width: 848},
            //         {name: 'tabletp', width: 768},
            //         {name: 'mobilel', width: 480},
            //         {name: 'mobilep', width: 320}
            //
            //     ]
            // }
        });
        loadCart(cart);
        loadCart2(cart);
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
        loadCart2(cart);
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

                    loadCart2(cart)
                    loadCart3(cart)
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
            sum+=(cart.productList[x].price*cart.productList[x].quantitySol)+10;


        }





        $(".total-cart").html(sum);

    }
    function loadCart2(cart){
        sum=0;


        for(const x in cart.productList){
            sum+=(cart.productList[x].price*cart.productList[x].quantitySol);


        }





        $(".total-cart1").html(sum);

    }
    function loadCart3(cart){
        sum="";


        for(const x in cart.productList){
            if (cart.productList[x].quantitySol==cart.productList[x].quantity) {
                sum += "Hiện tại sản phẩm không có đủ !";
                alert(sum);

            }


        }





        $(".listproduct").html(sum);

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
    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".sidebarBtn");
    sidebarBtn.onclick = function() {
        sidebar.classList.toggle("active");
        if(sidebar.classList.contains("active")){
            sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
        }else
            sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
    }

    function laytotal(){
        var xhttp;



        var phone = document.getElementsByClassName("duy");
        alert("duy")

        // var url ="checkControl?phone="+phone;
        // if(window.XMLHttpRequest){
        //     xhttp= new XMLHttpRequest();
        // }else{
        //     xhttp= new ActiveXObject("Microsoft.XMLHTTP")
        // }
        // xhttp.onreadystatechange=function ()
        // {
        //
        //
        // }
        // xhttp.open("POST",url,true);
        // xhttp.send();
    }

</script>
</body>
</html>
