<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="aside-menu">
    <c:forEach var="value" items="${listdanhmuc}">
        <li><a href="<c:url value="/sanpham/${value.getMadanhmuc()}/${value.getTendanhmuc()}" />">${value.getTendanhmuc()}</a></li>
    </c:forEach>
</ul>