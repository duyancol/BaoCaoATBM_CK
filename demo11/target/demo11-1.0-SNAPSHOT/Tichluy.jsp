<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.google.gson.Gson" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${listorder}" var="u">
    <div>${u.total}</div>
</c:forEach>
</body>
</html>
