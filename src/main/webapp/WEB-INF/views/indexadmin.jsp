
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" title="style" href="<c:url value="/resources/Styles/mos-style.css" />" />

        <jsp:include page="_head.jsp" />

    </head>
    <body>
        <jsp:include page="admin/header.jsp" />
            <div id="wrapper">
            <jsp:include page="admin/menu.jsp" />
        </div>

    </body>
</html>
