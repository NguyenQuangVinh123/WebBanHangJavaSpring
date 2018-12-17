<%-- 
    Document   : update_product
    Created on : Jun 5, 2018, 4:20:50 PM
    Author     : vinhnq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật sản phẩm</title>

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
                    <h3>Cập nhật danh mục</h3>
                    <form action="/ShopBanHang/ManagerProductServlet" method="post">
                        <table width="95%">
                            <tr>
                                <td style="float: right"><b>Tên sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="tenDanhMuc"><%=error%></td>
                        </tr>
                        <tr>
                                <td style="float: right"><b>Giá sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="giaSanPham"></td>
                        </tr>
                        <tr>
                                <td style="float: right"><b>Hình ảnh</b></td>
                                <td><input type="file" class="sedang" name="hinhAnh"></td>
                        </tr>
                        <tr>
                                <td style="float: right"><b>Loại sản phẩm:</b></td>
                                <td><input type="" class="sedang" name="loaiSanPham"></td>
                            </tr>
                        <tr><td></td><td>
                                <input type="hidden" name="command" value="update">
                                <input type="hidden" name="id_product" value="<%=request.getParameter("id_product")%>">
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