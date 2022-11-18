<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/04/2022
  Time: 12:54 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Title</title>
<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">--%>
<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
</head>
<body>
<center>
    <h1 class="the">San Pham</h1>
    <h2>

        &nbsp;&nbsp;&nbsp;
        <a href="rest">Danh sách Danh Muc</a>

    </h2>
</center>
<div align="center">
    <c:if test="${book != null}">
    <form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
        <form action="insert" method="post">
            </c:if>
            <table border="1" cellpadding="5" class="table table-striped table-hover">
                <thead>
                <caption>
                    <h2>
                        <c:if test="${book != null}">
                            Edit Book
                        </c:if>
                        <c:if test="${book == null}">
                            Thêm Danh Mục
                        </c:if>
                    </h2>
                </caption>

                <c:if test="${book == null}">--%>
                    <tr>
                        <th>ID: </th>
                        <td>
                            <input type="text" name="id" size="45"
                                   value="<c:out value='${book.id}' />"
                            />
                        </td>
                    </tr>
                </c:if>
                <c:if test="${book != null}">
                    <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
                </c:if>
                <tr>
                    <th>Name: </th>
                    <td>
                        <input type="text" name="name" size="45"
                               value="<c:out value='${book.name}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Price: </th>
                    <td>
                        <input type="text" name="price" size="45"
                               value="<c:out value='${book.price}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Quantity: </th>

                    <td>
                        <input type="text" name="quantity" size="45"
                               value="<c:out value='${book.quantity}' />"
                        />

                    </td>
                </tr>
                <tr>
                    <th>IMG: </th>

                    <td>
                        <input type="text" name="img" size="45"
                               value="<c:out value='${book.img}' />"
                        />

                    </td>
                </tr>
                <tr>
                    <th>Sale: </th>

                    <td>
                        <input type="text" name="saleprice" size="45"
                               value="<c:out value='${book.saleprice}' />"
                        />

                    </td>
                </tr>
                <tr>
                    <th>Mo ta: </th>

                    <td>
                        <input type="text" name="mota" size="45"
                               value="<c:out value='${book.mota}' />"
                        />

                    </td>
                </tr>
                <tr>
                    <th>IDCATEGORY: </th>

                    <td>
<%--                        <input type="text" name="idcategogy " size="45"--%>
<%--                               value="<c:out value='${book.idcategogy}' />"--%>
<%--                        />--%>
                        <select name="idcategogy" style="width: 100%">

                                <c:forEach var="book" items="${pdlistcc}">
                                    <option>${book.idcategogy}</option>

                                </c:forEach>

                        </select>

                    </td>
                </tr>
                <tr>
                    <th>IMG: </th>

                    <td>
                        <input type="text" name="img1" size="45"
                               value="<c:out value='${book.img1}' />"
                        />

                    </td>
                </tr>
                <tr>
                    <th>IMG: </th>

                    <td>
                        <input type="text" name="img2" size="45"
                               value="<c:out value='${book.img2}' />"
                        />

                    </td>
                </tr>
                <tr>
                    <th>IMG: </th>

                    <td>
                        <input type="text" name="img3" size="45"
                               value="<c:out value='${book.img3}' />"
                        />

                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save" />
                    </td>
                </tr>
                </thead>
            </table>
        </form>
</div>
</body>
</html>
