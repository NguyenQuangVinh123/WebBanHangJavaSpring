<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>


    <title>Manager Product</title>
    <jsp:include page="_head.jsp"/>

    <link rel="stylesheet" title="style" href="<c:url value="/resources/Styles/mos-style.css" />"/>

</head>
<body>


<jsp:include page="header_admin.jsp"/>

<div id="wrapper">

    <jsp:include page="menu_admin.jsp"/>

    <div id="rightContent">
        <h3>Quản lý sản phẩm</h3>



        <table class="data" id="table-sanpham">
            <div style="float: right;margin-bottom: 15px">
                <button class="btn beta-btn"><a href="/insert_product">Thêm sản phẩm</a> </button>
                <button class="btn beta-btn" id="xoa-sanpham">Xóa</button>
            </div>
            <thead>
            <tr class="data">
                <th class="data"><div class="check-box">
                    <label><input id="check-all" type="checkbox" value="" /></label>
                </div></th>
                <th class="data">Mã sản phẩm</th>
                <th class="data">Mã loại sản phẩm</th>
                <th class="data">Tên sản phẩm</th>
                <th class="data">Giá sản phẩm</th>
                <th class="data">Hình ảnh sản phẩm</th>
                <th class="data">Mô tả</th>
                <th class="data" width="90px">Tùy chọn</th>
            </tr>
            </thead>

            <c:forEach var="sp" items="${sanPhamList}">

                <tr class="data">

                    <th class="data"><div class="check-box">
                        <label><input class="" type="checkbox" value="${sp.masanpham}" /></label>
                    </div></th>
                    <td class="data" width="30px">${sp.masanpham}</td>
                    <td class="data">${sp.danhmucsanpham.madanhmuc}</td>

                    <td class="data">${sp.tensanpham}</td>
                    <td class="data">${sp.giatien}</td>
                    <td class="data"><img class="image1"  alt="" style="width: 95px;height: 95px" src="<c:url value="/resources/Images/product/${sp.hinhsanpham}"  />"/></td>

                    <td class="data">${sp.mota}</td>

                    <td class="data" width="90px">
                        <center>
                            <a href="">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                            <a href="">Xóa</a>
                        </center>
                    </td>
                </tr>


            </c:forEach>

        </table>
        <ul class="pagination pagination-control">
            <c:forEach var="i" begin="1" end="${tongsopage}">
                <c:choose>
                    <c:when test="${i==1}">
                        <li style="cursor: pointer" class="pagination-items active"><a >${i}</a></li>
                    </c:when>

                    <c:otherwise>
                        <li style="cursor: pointer" class="pagination-items "><a >${i}</a></li>

                    </c:otherwise>
                </c:choose>
            </c:forEach>

        </ul>
    </div>

    <div class="clear"></div>


</div>
</body>
</html>
