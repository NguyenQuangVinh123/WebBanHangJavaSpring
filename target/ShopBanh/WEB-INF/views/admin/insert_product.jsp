
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý danh mục</title>

        <link rel="stylesheet" title="style" href="<c:url value="/resources/Styles/mos-style.css" />" />

        <jsp:include page="../_head.jsp" />
    </head>
    <body>




        <jsp:include page="header_admin.jsp" />
            <div id="wrapper">

            <jsp:include page="menu_admin.jsp" />

                <div id="rightContent">
                    <h3>Thông tin  sản phẩm</h3>
                    <form id="form-data">
                        <table width="95%">
                            <tr>
                                <td style="float: right"><b>Tên sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="tensanpham"></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Giá sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="giatien"></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Hình ảnh:</b></td>
                                <td><input type="file" id="hinhanh" class="sedang" name="hinhanh"></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Tên loại sản phẩm:</b></td>
                                <td>
                                    <select name="danhmucsanpham" id="danhmucsanpham">
                                        <c:forEach var="sp" items="${listdanhmuc}">
                                            <option value="${sp.madanhmuc}">${sp.tendanhmuc}</option>
                                        </c:forEach>

                                    </select>
                                </td>
                            </tr>
                            <tr style="float: right;margin-top: 50px">
                                <td>

                                    <button class="beta-btn beta-btn-medium-sea" id="btnThemSanPham">Thêm sản phẩm</button>
                                </td>
                            </tr>
                        </table>
                    </form>

            </div>
            <div class="clear"></div>


        </div>


    </body>
</html>
