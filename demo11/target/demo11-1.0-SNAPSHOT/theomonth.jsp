<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 7/2/2022
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Thống kê theo tháng</title>
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
  <script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['Task', 'Hours per Day'],
        <c:forEach items="${lmont}" var="l">
        ['${l.tensp}',     ${l.sum*l.price}],

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

  </div>
  <div class="row">
    <div class="col-sm-3">
      <h1>Mời chọn tháng:</h1>
      <form action="tktt" method="post">
        <input type="month" name="m">
        <button class="btn btn-sm btn-defaut" type="submit">Thống kê</button>
      </form>

    </div>
  </div>
  <div class="row" style="float:right">
    <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#bieudotheothang">Xem biểu đồ</button>
    <div class="modal fade" id="bieudotheothang" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title" style="text-align:center">Biểu đồ doanh thu sản phẩm theo tháng</h4>
          </div>
          <div class="modal-body">
<%--            <jsp:include page="BieuDo/bieudodoanhthusanphamtheothang.jsp"></jsp:include>--%>
  <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
          </div>
        </div>

      </div>
    </div>

  </div>
  <div class="row">
<%--    <%Map<String,TraSua> mapTS = new ThongKeDAO().thongKeTheoThangHeThong();--%>
<%--      String ok = (String) session.getAttribute("okthang");--%>
<%--      String thang= (String) session.getAttribute("month");--%>
<%--      if(ok!=null){--%>
<%--        if(ok.equals("ok")){--%>
<%--          mapTS=new ThongKeDAO().thongKeTheoThang(thang);--%>
<%--        }else{--%>
<%--          mapTS=new ThongKeDAO().thongKeTheoThangHeThong();--%>
<%--        }--%>
<%--      }--%>
<%--    %>--%>
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

      <TR>
        <c:forEach items="${lmont}" var="l">
      <TR>
        <TD> ${l.tensp}</td>
        <TD> ${l.price}</td>
        <TD> ${l.sum}</td>
        <TD> ${l.sum*l.price}</td>

        <TD> ${l. createAt}</td>

      </TR>
      </c:forEach>
      </TR>

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
