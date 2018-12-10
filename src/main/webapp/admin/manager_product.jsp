

<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script
            src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
        crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

        <title>Manager Product</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>

        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>

        <%
            ProductDAO productDAO = new ProductDAO();
//            ArrayList<Product> listProductType = ProductDAO.getListProduct();
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý sản phẩm</h3>

                    <a href="${root}/admin/insert_product.jsp">Thêm sản phẩm</a>

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

                    <%
                        int count = 0;
                        for (Product c : productDAO.getListProduct()) {

                            count++;
                    %>
                    <tr class="data">
                        <td class="data" width="30px"><%=count%></td>
                        <td class="data"><%=c.getId_product()%></td>
                        <td class="data"><%=c.getName()%></td>
                        <td class="data"><%=c.getUnit_price()%></td>
                        <td class="data"><%=c.getImage()%></td>
                        <td class="data"><%=c.getProductType().getName()%></td>

                        <td class="data" width="90px">
                    <center>
                        <a href="${root}/admin/update_product.jsp?command=update&id_product=<%=c.getId_product()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                        <a href="/ShopBanHang/ManagerProductServlet?command=delete&id_product=<%=c.getId_product()%>">Xóa</a>
                    </center>
                    </td>
                    </tr>
                    <%}%>

                </table>
            </div>
            <div class="clear"></div>


        </div>      
    </body>
</html>
