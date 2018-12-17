


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>


        <title>Manager Product</title>

        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>


        <jsp:include page="header.jsp" />

            <div id="wrapper">

            <jsp:include page="menu.jsp" />

                <div id="rightContent">
                    <h3>Quản lý sản phẩm</h3>

                    <a href="${root}/WEB-INF/views/admin/insert_product.jsp">Thêm sản phẩm</a>

                <table class="data">

                    <tr class="data">
                        <th class="data" width="30px">STT</th>
                        <th class="data">Mã  sản phẩm</th>
                        <th class="data">Tên sản phẩm</th>
                        <th class="data">Giá sản phẩm</th>
                        <th class="data">Hình ảnh sản phẩm</th>
                        <th class="data">Mã loại sản phẩm</th>


                        <th class="data" width="90px">Tùy chọn</th>
                    </tr>


                    <tr class="data">
                        <td class="data" width="30px"></td>
                        <td class="data"></td>
                        <td class="data"></td>
                        <td class="data"></td>
                        <td class="data"></td>
                        <td class="data"></td>

                        <td class="data" width="90px">
                    <center>
                        <a href="">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                        <a href="">Xóa</a>
                    </center>
                    </td>
                    </tr>

                </table>
            </div>
            <div class="clear"></div>


        </div>      
    </body>
</html>
