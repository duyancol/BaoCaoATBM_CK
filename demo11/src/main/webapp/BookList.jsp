<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/04/2022
  Time: 12:15 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" >--%>
</head>
<body>
<center>
    <h1 class="the">Caterogy</h1>
 <div style="float: right;clear: left">
     <a href="new"><button type="button" class="btn btn-outline-success" style="margin:10px 40px"><i class="fas fa-plus"></i></button></a>
 </div>

        &nbsp;&nbsp;&nbsp;
<%--        <button type="button" class="btn btn-outline-success">Success</button>--%>


</center>
<div align="center">
    <table border="1" cellpadding="5" class="table table-hover table-dark">

        <thead  >
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>IMG</th>
            <th>Actions</th>
        </tr>
        </thead>
        <c:forEach var="book" items="${listDM}">

            <tr>
                <td><c:out value="${book.id}" /></td>
                <td><c:out value="${book.name}" /></td>
                <td><c:out value="${book.price}" /></td>
                <td><c:out value="${book.quantity}" /></td>
                <td>  <img style="width: 60px;height: 60px" src=" <c:out value="${book.img}" />" alt=""></td>


                <td>
                    <a href="edit?id=<c:out value='${book.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="delete?id=<c:out value='${book.id}' />">Delete</a>
                </td>

            </tr>
        </c:forEach>
    </table>

</div>
<%--<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>--%>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
