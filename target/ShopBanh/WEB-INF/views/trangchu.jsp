<%--
  Created by IntelliJ IDEA.
  User: nguyenquangvinh
  Date: 11/20/18
  Time: 1:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="_head.jsp" />

    <title>Trang Chu</title>
</head>
<body>
    <div class="container-fluid">
        <jsp:include page="header.jsp" />
        <jsp:include page="menu.jsp" />
        <jsp:include page="slide.jsp" />
        <div class="clearfix"></div>
        <jsp:include page="topproduct.jsp" />
        <div class="clearfix"></div>
        <jsp:include page="footer.jsp" />

    </div>

</body>
</html>
