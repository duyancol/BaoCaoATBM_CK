
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

    <%--    <%  Map<String,TraSua> mapTS = new ThongKeDAO().thongKeTheoNgayHeThong();--%>
    <%--        String ok = (String) session.getAttribute("okngay");--%>
    <%--        String ngay= (String) session.getAttribute("ngay");--%>
    <%--        if(ok!=null){--%>
    <%--            if(ok.equals("ok")){--%>
    <%--                mapTS=new ThongKeDAO().thongKeTheoNgay(ngay);--%>
    <%--            }else{--%>
    <%--                mapTS=new ThongKeDAO().thongKeTheoNgayHeThong();--%>
    <%--            }--%>
    <%--        } %>--%>
    <script type="text/javascript">
        google.charts.load("current", {packages:["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                <c:forEach items="${pdlist}" var="u">
                ['${u.tensp}',     ${u.sum*u.price}],

                </c:forEach>
                // ['Work',     11],
                // ['Eat',      2],
                // ['Commute',  2],
                // ['Watch TV', 2],
                // ['Sleep',    7]

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
<div class="container">

    <div class="row">
        <div class="col-sm-3">
            <h1>Mời chọn ngày:</h1>
            <form action="tktn" method="post">
                <input type="date" name="d">
                <button class="btn btn-sm btn-defaut" >Thống kê</button>
            </form>
        </div>
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
<%--        <%  Map<String,TraSua> mapTS = new ThongKeDAO().thongKeTheoNgayHeThong();--%>
<%--            String ok = (String) session.getAttribute("okngay");--%>
<%--            String ngay= (String) session.getAttribute("ngay");--%>
<%--            if(ok!=null){--%>
<%--                if(ok.equals("ok")){--%>
<%--                    mapTS=new ThongKeDAO().thongKeTheoNgay(ngay);--%>
<%--                }else{--%>
<%--                    mapTS=new ThongKeDAO().thongKeTheoNgayHeThong();--%>
<%--                }--%>
<%--            } %>--%>
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

                    <TD> ${u. createAt}</td>
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