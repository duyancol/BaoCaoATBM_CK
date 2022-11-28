
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 7/2/2022
  Time: 5:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thống kê theo ngày</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- datatable -->
    <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link rel="stylesheet" href="admin.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></head>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/manager.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript">
        google.charts.load("current", {packages:["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                <c:forEach items="${pdlist}" var="u">
                ['${u.tensp}',     ${u.sum*u.price}],

                </c:forEach>


            ]);

            var options = {
                title: 'Biểu đồ thống kê doanh thu theo ngày',
                is3D: true,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
        }
    </script>
</head>
<body>
<%--<div class="container">--%>

<%--    <div class="row">--%>
<%--        <div class="col-sm-3">--%>
<%--            <h1>Mời chọn ngày:</h1>--%>
<%--            <form action="tktn" method="post">--%>
<%--                <input type="date" name="d">--%>
<%--                <button class="btn btn-sm btn-defaut" >Thống kê</button>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--        <div class="row" style="float:right">--%>
<%--            <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#bieudotheongay">Xem biểu đồ</button>--%>
<%--            <div class="modal fade" id="bieudotheongay" role="dialog">--%>
<%--                <div class="modal-dialog">--%>

<%--                    <!-- Modal content-->--%>
<%--                    <div class="modal-content">--%>
<%--                        <div class="modal-header">--%>
<%--                            <button type="button" class="close" data-dismiss="modal">&times;</button>--%>
<%--                            <h4 class="modal-title" style="text-align:center">Biểu đồ doanh thu sản phẩm theo ngày</h4>--%>
<%--                        </div>--%>
<%--                        <div class="modal-body">--%>
<%--                            <div id="piechart_3d" style="width: 900px; height: 500px;"></div>--%>
<%--                        </div>--%>
<%--                        <div class="modal-footer">--%>
<%--                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--    <br>--%>
<%--    <div class="row ">--%>
<%--&lt;%&ndash;        <%  Map<String,TraSua> mapTS = new ThongKeDAO().thongKeTheoNgayHeThong();&ndash;%&gt;--%>
<%--&lt;%&ndash;            String ok = (String) session.getAttribute("okngay");&ndash;%&gt;--%>
<%--&lt;%&ndash;            String ngay= (String) session.getAttribute("ngay");&ndash;%&gt;--%>
<%--&lt;%&ndash;            if(ok!=null){&ndash;%&gt;--%>
<%--&lt;%&ndash;                if(ok.equals("ok")){&ndash;%&gt;--%>
<%--&lt;%&ndash;                    mapTS=new ThongKeDAO().thongKeTheoNgay(ngay);&ndash;%&gt;--%>
<%--&lt;%&ndash;                }else{&ndash;%&gt;--%>
<%--&lt;%&ndash;                    mapTS=new ThongKeDAO().thongKeTheoNgayHeThong();&ndash;%&gt;--%>
<%--&lt;%&ndash;                }&ndash;%&gt;--%>
<%--&lt;%&ndash;            } %>&ndash;%&gt;--%>
<%--        <table id="datatable-buttons" class="table table-striped table-bordered">--%>
<%--            <thead>--%>
<%--            <tr>--%>

<%--                <th>MSP</th>--%>
<%--                <th>Giá </th>--%>
<%--                <th>Số lượng bán ra</th>--%>
<%--                <th>Doanh thu</th>--%>
<%--                <th>Ngày</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <c:forEach items="${pdlist}" var="u">--%>
<%--                <TR>--%>
<%--                    <TD> ${u.tensp}</td>--%>
<%--                    <TD> ${u.price}</td>--%>
<%--                    <TD> ${u.sum}</td>--%>
<%--                    <TD> ${u.sum*u.price}</td>--%>

<%--                    <TD> ${u. createAt}</td>--%>
<%--&lt;%&ndash;                    <TD> <%= ts.getTen()%></TD>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <TD> <%= ts.getGia() %></TD>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <TD> <%= ts.getSoLuong()%></TD>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <TD> <%=ts.getDoanhThu()%></TD>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <TD> <%=ts.getNgay()%></TD>&ndash;%&gt;--%>
<%--                </TR>--%>
<%--            </c:forEach>--%>
<%--&lt;%&ndash;            <%int count=0;for(TraSua ts : mapTS.values()){ count++;%>&ndash;%&gt;--%>

<%--&lt;%&ndash;            <%} %>&ndash;%&gt;--%>
<%--            </tbody>--%>
<%--        </table>--%>
<%--    </div>--%>
<%--</div>--%>


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
            <img src="images/profile.jpg" alt="">
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
                            <div class="row">
                                <div class="col-sm-3">
                                    <h1>Mời chọn ngày:</h1>
                                    <form action="tktn" method="post">
                                        <input type="date" name="d">
                                        <button class="btn btn-sm btn-defaut" >Thống kê</button>


                                    </form>


                                </div>
                                <a href="chartmonth">
                                    <button class="btn btn-sm btn-defaut" >Thống kê theo tháng</button>
                                </a>
                                <div class="row" style="float:right">
                                    <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#bieudotheongay">Xem biểu đồ</button>
                                    <div class="modal fade" id="bieudotheongay" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title" style="text-align:center">Biểu đồ doanh thu sản phẩm theo ngày</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>
                            <br>
                            <div class="row ">

                                <table id="datatable-buttons" class="table table-striped table-bordered">
                                    <thead>
                                    <tr>

                                        <th>MSP</th>
                                        <th>Giá </th>
                                        <th>Số lượng bán ra</th>
                                        <th>Doanh thu</th>
                                        <th>Ngày</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${pdlist}" var="u">
                                        <TR>
                                            <TD> ${u.tensp}</td>
                                            <TD> ${u.price}</td>
                                            <TD> ${u.sum}</td>
                                            <TD> ${u.sum*u.price}</td>

                                            <TD> ${u.createAt}</td>
                        <%--                    <TD> <%= ts.getTen()%></TD>--%>
                        <%--                    <TD> <%= ts.getGia() %></TD>--%>
                        <%--                    <TD> <%= ts.getSoLuong()%></TD>--%>
                        <%--                    <TD> <%=ts.getDoanhThu()%></TD>--%>
                        <%--                    <TD> <%=ts.getNgay()%></TD>--%>
                                        </TR>
                                    </c:forEach>
                        <%--            <%int count=0;for(TraSua ts : mapTS.values()){ count++;%>--%>

                        <%--            <%} %>--%>
                                    </tbody>
                                </table>
                            </div>



                    </div>
                    <!-- Edit Modal HTML -->
                    <div id="editEmployeeModal" class="modal fade" >
                        <div class="modal-dialog" >
                            <div class="modal-content" >
<%--                                <form>--%>
<%--                                    <div class="modal-header">--%>
<%--                                        <h4 class="modal-title">Edit Employee</h4>--%>
<%--                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
<%--                                    </div>--%>
<%--                                    <div class="modal-body">--%>
<%--                                        <div class="form-group">--%>
<%--                                            <label>Name</label>--%>
<%--                                            <input type="text" class="form-control" required>--%>
<%--                                        </div>--%>
<%--                                        <div class="form-group">--%>
<%--                                            <label>Email</label>--%>
<%--                                            <input type="email" class="form-control" required>--%>
<%--                                        </div>--%>
<%--                                        <div class="form-group">--%>
<%--                                            <label>Address</label>--%>
<%--                                            <textarea class="form-control" required></textarea>--%>
<%--                                        </div>--%>
<%--                                        <div class="form-group">--%>
<%--                                            <label>Phone</label>--%>
<%--                                            <input type="text" class="form-control" required>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="modal-footer">--%>
<%--                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">--%>
<%--                                        <input type="submit" class="btn btn-info" value="Save">--%>
<%--                                    </div>--%>
<%--                                </form>--%>
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
</script>

</body>
<!-- jQuery -->
<script src="vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- datatable -->
<script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="vendors/jszip/dist/jszip.min.js"></script>
<script src="vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="vendors/pdfmake/build/vfs_fonts.js"></script>


<!-- Custom Theme Scripts -->
<script src="build/js/custom.min.js"></script>
</html>