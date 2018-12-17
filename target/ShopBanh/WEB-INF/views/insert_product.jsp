
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý danh mục</title>

        <link rel="stylesheet" title="style" href="<c:url value="/resources/Styles/mos-style.css" />" />

        <jsp:include page="_head.jsp" />
    </head>
    <body>




        <jsp:include page="admin/header.jsp" />
            <div id="wrapper">

            <jsp:include page="admin/menu.jsp" />

                <div id="rightContent">
                    <h3>Thông tin  sản phẩm</h3>
                    <form action="" method="post">
                        <table width="95%">
                            <tr>
                                <td style="float: right"><b>Tên sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="tenDanhMuc"></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Giá sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="giaSanPham"></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Hình ảnh:</b></td>
                                <td><input type="file" class="sedang" name="hinhAnh"></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Tên loại sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="loaiSanPham"></td>
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
