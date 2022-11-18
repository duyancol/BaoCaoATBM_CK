<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: hnjj
  Date: 8/8/2022
  Time: 2:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            font-family: "Courier New", Courier, "Lucida Sans Typewriter", "Lucida Typewriter", monospace !important;
            letter-spacing: -0.3px;
        }
        .invoice-wrapper{ width: 700px; margin: auto; }
        .nav-sidebar .nav-header:not(:first-of-type){ padding: 1.7rem 0rem .5rem; }
        .logo{ font-size: 50px; }
        .sidebar-collapse .brand-link .brand-image{ margin-top: -33px; }
        .content-wrapper{ margin: auto !important; }
        .billing-company-image { width: 50px; }
        .billing_name { text-transform: uppercase; }
        .billing_address { text-transform: capitalize; }
        .table{ width: 100%; border-collapse: collapse; }
        th{ text-align: left; padding: 10px; }
        td{ padding: 10px; vertical-align: top; }
        .row{ display: block; clear: both; }
        .text-right{ text-align: right; }
        .table-hover thead tr{ background: #eee; }
        .table-hover tbody tr:nth-child(even){ background: #fbf9f9; }
        address{ font-style: normal; }
    </style>
</head>
<body>
<div class="row invoice-wrapper">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <tr>
                        <td>
                            <h4>
                                <span class="">Oder Custommer</span>
                            </h4>
                        </td>
                        <td class="text-right">
                            <strong>Date: ${details.createAt}</strong>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <br><br>
        <div class="row invoice-info">
            <div class="col-md-12">
                <table class="table">
                    <tr>
                        <td>
                            <div class="">
                                ID Order :
                                <address>
                                    <strong> Custommer:</strong><br>
                                    Adress:<br>
                                    Email:
                                </address>
                            </div>
                        </td>
                        <td>
                            <c:set var="auth" value="${sessionScope.auth}"/>
                            <div class="">
                                ${auth.username}
                                <address>
                                    <strong class="billing_name">${auth.username}</strong><br>
                                    <span class="billing_address">${details.adress}</span><br>
                                    <span class="billing_gst">${auth.email}</span><br>
                                    Phone: ${auth.phone}<br>

                                </address>
                            </div>
                        </td>
                        <td>
                            <div class="text-right">
                                <b>Invoice #${details.id}</b><br>
                                Paid for REASON
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <br><br>
        <div class="row">
            <div class="col-md-12 table-responsive">
                <table class="table table-condensed table-hover">
                    <thead>
                    <tr>
                        <th>Qty</th>
                        <th>Product</th>
                        <th>Description</th>
                        <th>Price</th>
                    </tr>
                    </thead>
                    <tbody>
<c:forEach items="${getdetail}" var="cate">
                    <tr>
                        <td>1</td>
                        <td>${cate.product.name}</td>
                        <td>Amount paid for Product Name</td>
                        <td class="text-right"> ${cate.price}</td>
                    </tr>
</c:forEach>
                    <tr>
                        <td colspan="3" class="text-right">Sub Total</td>
                        <td class="text-right"><strong> ${details.total}</strong></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="text-right">TAX (8%)</td>
                        <td class="text-right"><strong>$ ${details.total*10/100}</strong></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="text-right">Total Payable</td>
                        <td class="text-right"><strong>$ ${details.total*10/100+details.total}</strong></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
        <br><br><br>
        <div>
            <small><small>NOTE: This is system generate invoice no need of signature</small></small>

            <a href="userseenOrder" style="margin-left:20%;margin-top: 50px;background: rgba(0,167,255,0.15);padding: 5px;text-decoration: none">
                Return
            </a>
        </div>
    </div>

</div>

</body>
</html>
