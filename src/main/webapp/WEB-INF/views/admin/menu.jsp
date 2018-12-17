

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <title>menu</title>
    </head>
    <body>

        <div id="leftBar">
            <ul>
                <li><a href="<c:url value="/dashboard"/>">Trang chủ</a></li>
                <li><a href="${root}/WEB-INF/views/admin/manager_typeproduct.jsp">Danh mục</a></li>
                <li><a href="<c:url value="/quanlysanpham"/>">Sản phẩm</a></li>
                <li><a href="${root}/WEB-INF/views/admin/manager_bill.jsp">Hóa đơn</a></li>
            </ul>
        </div>

    </body>
</html>
