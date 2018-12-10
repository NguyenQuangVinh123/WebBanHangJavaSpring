
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý danh mục</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>

        <%
            String error = "";
            if (request.getParameter("error") != null) {
                error = (String) request.getParameter("error");
            }
        %>

        <jsp:include page="header.jsp"></jsp:include>
            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Thông tin danh mục</h3>
                    <form action="/ShopBanHang/ManagerProductServlet" method="post">
                        <table width="95%">
                            <tr>
                                <td style="float: right"><b>Tên sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="tenDanhMuc"><%=error%></td>
                            </tr
                            <tr>
                                <td style="float: right"><b>Giá sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="giaSanPham"><%=error%></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Hình ảnh:</b></td>
                                <td><input type="file" class="sedang" name="hinhAnh"><%=error%></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Tên loại sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="loaiSanPham"><%=error%></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="hidden" name="command" value="insert">
                                    <input type="submit" class="button" value="Lưu dữ liệu">
                                </td>
                            </tr>
                    </table>
                </form>
            </div>
            <div class="clear"></div>


        </div>


    </body>
</html>
