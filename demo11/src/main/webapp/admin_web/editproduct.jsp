<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/21/2022
  Time: 4:04 PM
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
                <form action="Editproductdetail" method="post">
                    <%
                        if (error != null) {
                    %>
                    <div style="color: red;font-size: 16px" >
                        <%=error%>
                    </div>
                    <%

                        }
                    %>

                    <div class="modal-header">
                        <h4 class="modal-title">Edit Product</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Id</label>
                            <input name="id" type="text" class="form-control" required value="${pd.id}">
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <input name="name" type="text" class="form-control" required value="${pd.name}" >
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input name="price" type="number" class="form-control" required value="${pd.price}" >
                        </div>
                        <div class="form-group">
                            <label>Quantity</label>
                            <input name="quantity" type="text" class="form-control" required value="${pd.quantity}">
                        </div>
                        <div class="form-group">
                            <label>IMG</label>
                            <input name="img" type="text" class="form-control" required value="${pd.img}">
                        </div>
                        <div class="form-group">
                            <label>saleprice</label>
                            <input name="saleprice" type="text" class="form-control" required value="${pd.saleprice}">
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="mota" class="form-control" required >${pd.mota}</textarea>
                        </div>
                        <%--                                        <div class="form-group">--%>
                        <%--                                            <label>IMG1</label>--%>
                        <%--                                            <input name="img1" type="text" class="form-control" required>--%>
                        <%--                                        </div>--%>
                        <%--                                        <div class="form-group">--%>
                        <%--                                            <label>IMG2</label>--%>
                        <%--                                            <input name="img2" type="text" class="form-control" required>--%>
                        <%--                                        </div>--%>
                        <%--                                        <div class="form-group">--%>
                        <%--                                            <label>IMG3</label>--%>
                        <%--                                            <input name="img3" type="text" class="form-control" required>--%>
                        <%--                                        </div>--%>
                        <div class="form-group">
                            <label>idcategogy</label>
                            <select name="idcategogy" >

                                <c:forEach var="book" items="${pdlistcc}">
                                    <option>${book.idcategogy}</option>

                                </c:forEach>

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
