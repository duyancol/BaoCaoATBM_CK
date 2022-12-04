<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/4/2022
  Time: 7:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%
    String error = (String) request.getAttribute("error");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 07/04/2022
  Time: 3:05 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title> Responsiive Admin Dashboard | CodingLab </title>
    <link rel="stylesheet" href="admin.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></head>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/manager.css" rel="stylesheet" type="text/css"/>

<style>
    img{
        width:80px;
        height: 80px;
    }
</style>
<body>

<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxl-c-plus-plus'></i>
        <span class="logo_name">CodingLab</span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="Dashboard" class="active">
                <i class='bx bx-grid-alt' ></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="Servlet3">
                <i class='bx bx-box' ></i>
                <span class="links_name">Product</span>
            </a>
        </li>
        <li>
            <a href="OrderAdminControl">
                <i class='bx bx-list-ul' ></i>
                <span class="links_name">Order list</span>
            </a>
        </li>
        <li>
            <a href="tktn">
                <i class='bx bx-pie-chart-alt-2' ></i>
                <span class="links_name">Analytics</span>
            </a>
        </li>
        <li>
            <a href="Newadmin">
                <i class='bx bx-coin-stack' ></i>
                <span class="links_name">News</span>
            </a>
        </li>
        <li>
            <a href="trademarksAD">
                <i class='bx bx-book-alt' ></i>
                <span class="links_name">Trademark</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-user' ></i>
                <span class="links_name">Team</span>
            </a>
        </li>
        <li>
            <a href="Product_Admin">
                <i class='bx bx-message' ></i>
                <span class="links_name">Messages</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-heart' ></i>
                <span class="links_name">Favrorites</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-cog' ></i>
                <span class="links_name">Setting</span>
            </a>
        </li>
        <li class="log_out">
            <a href="#">
                <i class='bx bx-log-out'></i>
                <span class="links_name">Log out</span>
            </a>
        </li>
    </ul>
</div>
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Dashboard</span>
        </div>
        <div class="search-box">
            <input type="text" placeholder="Search...">
            <i class='bx bx-search' ></i>
        </div>
        <div class="profile-details">
            <img src="https://th.bing.com/th/id/OIP.e1KNYwnuhNwNj7_-98yTRwHaF7?w=255&h=204&c=7&r=0&o=5&dpr=1.25&pid=1.7" alt="">
            <span class="admin_name">Prem Shahi</span>
            <i class='bx bx-chevron-down' ></i>
        </div>
    </nav>

    <div class="home-content" >

        <div class="sales-boxes">
            <div class="recent-sales box" style="width: 100%">
<%--                <div class="title">Product</div>--%>
                <div class="sales-details">
                    <div class="container">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-6">
<%--                                        <h2>Manage <b>Product</b></h2>--%>
                                    </div>
                                    <div class="col-sm-6">

                                        <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>

                                    </div>
                                </div>
                            </div>
                            <table id="example" class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                                    </th>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>IMG</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="book" items="${listDM}">
                                    <tr>
                                        <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                        </td>
                                        <td>${book.id}</td>
                                        <td>${book.name}</td>
                                        <td>
                                            <img src="${book.img}">
                                        </td>

                                        <td>${book.price} $</td>
                                        <td>${book.quantity}</td>
                                        <td>
                                            <a href="editProduct?id=<c:out value='${book.id}' />"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                            <a href="deleteProduct?id=<c:out value='${book.id}' />" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </div>
<%--                        <a href="ProductServlet"><button type="button" class="btn btn-primary">Back to home</button></a>--%>

                    </div>
                    <!-- Edit Modal HTML -->
                    <div id="addEmployeeModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <%
                                    if (error != null) {
                                %>
                                <div style="color: red;font-size: 16px" >
                                    <%= error%>
                                </div>
                                <%

                                    }
                                %>

                                <section id="pd">
                                    <form action="insertProductAD" method="post" enctype="multipart/form-data" >
                                        <%
                                            if (error != null) {
                                        %>
                                        <div style="color: red;font-size: 16px" >
                                            <%= error%>
                                        </div>
                                        <%

                                            }
                                        %>

                                        <div class="modal-header">
                                            <h4 class="modal-title">Add Product</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label>Id</label>
                                                <input name="id" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input name="name" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Price</label>
                                                <input name="price" type="number" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Quantity</label>
                                                <input name="quantity" type="text" class="form-control" required>
                                            </div>

                                            <div class="form-group">
                                                <label>IMG</label>
<%--                                                <input name="img" type="text" class="form-control"  required>--%>

<%--                                                    <form action="UploadControl" method="post" enctype="multipart/form-data">--%>
                                                        Image path : <input type="file" name="file2" placeholder="Image" required>


<%--                                                    </form>--%>

                                            </div>
                                            <div class="form-group">
                                                <label>saleprice</label>
                                                <input name="saleprice" type="text" class="form-control" required>
                                            </div>

                                            <div class="form-group">
                                                <label>Description</label>
                                                <textarea name="mota" class="form-control" required></textarea>
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

                                                    <%--                                                <c:forEach var="book" items="${pdlistcc}">--%>
                                                    <%--                                                    <option>${book.idcategogy}</option>--%>

                                                    <%--                                                </c:forEach>--%>
                                                    <c:forEach var="d" items="${listdm}">
                                                        <option>${d.idcategogy}</option>
                                                    </c:forEach>

                                                </select>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                            <input type="submit" class="btn btn-success" value="Add">
                                        </div>
                                    </form>
                                </section>
                            </div>
                        </div>
                    </div>
                    <!-- Edit Modal HTML -->
                    <div id="editEmployeeModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form>
                                    <div class="modal-header">
                                        <h4 class="modal-title">Edit Employee</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Address</label>
                                            <textarea class="form-control" required></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <input type="text" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                        <input type="submit" class="btn btn-info" value="Save">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Delete Modal HTML -->
                    <div id="deleteEmployeeModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form>
                                    <div class="modal-header">
                                        <h4 class="modal-title">Delete Product</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <p>Are you sure you want to delete these Records?</p>
                                        <p class="text-warning"><small>This action cannot be undone.</small></p>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                        <input type="submit" class="btn btn-danger" value="Delete">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="button">
                    <a href="#">See All</a>
                </div>
            </div>

        </div>
    </div>
</section>
<script src="js/manager.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap.min.js" type="text/javascript"></script>


<script>

    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".sidebarBtn");
    sidebarBtn.onclick = function() {
        sidebar.classList.toggle("active");
        if(sidebar.classList.contains("active")){
            sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
        }else
            sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
    }
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>


</body>
</html>

