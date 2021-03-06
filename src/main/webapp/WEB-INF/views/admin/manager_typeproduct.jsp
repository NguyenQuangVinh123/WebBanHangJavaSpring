

<%@page import="model.ProductType"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductTypeDAO"%>
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

        <title>Quản lý danh mục</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>

        <%
            ProductTypeDAO productTypeDAO = new ProductTypeDAO();
//            ArrayList<ProductType> listProductType = ProductTypeDAO.getListProductType();
        %>

        <jsp:include page="header_admin.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu_admin.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý danh mục</h3>

                    <a href="${root}/WEB-INF/views/admin/insert_typeproduct.jsp">Thêm danh mục</a>

                <table class="data">

                    <tr class="data">
                        <th class="data" width="30px">STT</th>
                        <th class="data">Mã loại sản phẩm</th>
                        <th class="data">Tên loại sản phẩm</th>
                        <th class="data" width="90px">Tùy chọn</th>
                    </tr>

                    <%
                        int count = 0;
                        for (ProductType c : productTypeDAO.getListProductType()) {
                            count++;
                    %>
                    <tr class="data">
                        <td class="data" width="30px"><%=count%></td>
                        <td class="data"><%=c.getId_type_product()%></td>
                        <td class="data"><%=c.getName()%></td>
                        <td class="data" width="90px">
                    <center>
                        <a href="${root}/WEB-INF/views/admin/update_typeproduct.jsp?command=update&id_type_product=<%=c.getId_type_product()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                        <a href="/ShopBanHang/ManagerProductTypeServlet?command=delete&id_type_product=<%=c.getId_type_product()%>">Xóa</a>
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
