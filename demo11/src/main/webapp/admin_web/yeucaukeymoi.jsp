<%--
  Created by IntelliJ IDEA.
  User: LAPTOP USA PRO
  Date: 12/30/2022
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%
  String error = (String) request.getAttribute("error");
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
  <style>
    img{
      width: 200px;
      height: 120px;
    }
  </style>
</head>
<body>
<c:set var="auth" value="${sessionScope.auth}"/>
<div class="container">
  <div class="table-wrapper">
    <div class="table-title">
      <div class="row">
        <div class="col-sm-6">

        </div>
        <div class="col-sm-6">
        </div>
      </div>
    </div>
  </div>
  <div id="editEmployeeModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <form action="InserYeucauKeymoi" method="post">
          <div class="modal-header">
            <h4 class="modal-title">Form yêu cầu cấp key mới </h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          </div>
          <div class="modal-body">
            <div class="form-group">
              <label>Bí danh cũ :</label>
              <input name="bidanhcu" type="text" class="form-control" required value="">
            </div>
            <div class="form-group">
              <label>Họ tên đầy đủ :</label>
              <input name="ten" type="text" class="form-control" required value="" >
            </div>
            <div class="form-group">
              <label>Bí danh mới :</label>
              <input name="bidanhmoi" type="text" class="form-control" required value="" >
            </div>
            <div class="form-group">
              <label>Mật khẩu :</label>
              <input name="matkhau" type="password" class="form-control" required value="">
            </div>
            <div class="form-group">
              <label>Lặp lại mật khẩu :</label>
              <input name="rematkhau" type="password" class="form-control" required value="">
            </div>
            <div class="form-group">
              <label>Địa chỉ hiện tại :</label>
              <input name="diachi" type="text" class="form-control" required value="">
            </div>
            <div class="form-group">
              <label>id :</label>
              <input name="iduser" type="text" class="form-control" required value="${auth.id}">
            </div>

            <div class="form-group">
              <label>Thuật toán :</label>
              <select name="idcategogy" >


                  <option>RSA</option>
                <option>DSA</option>



              </select>
            </div>

          </div>
          <div class="modal-footer">
            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
            <input type="submit" class="btn btn-success" value="Add">
          </div>
        </form>
      </div>
    </div>
  </div>

</div>


<script src="js/manager.js" type="text/javascript"></script>
</body>
</html>

