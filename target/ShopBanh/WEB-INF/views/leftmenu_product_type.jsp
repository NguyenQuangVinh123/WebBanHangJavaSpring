<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="aside-menu">
    <c:forEach var="value" items="${sanPhamList}">
        <li><a href="">${value.getDanhmucsanpham().getTendanhmuc()}</a></li>
    </c:forEach>
</ul>