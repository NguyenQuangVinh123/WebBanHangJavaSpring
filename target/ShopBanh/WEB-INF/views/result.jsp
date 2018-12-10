

<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script
            src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
        crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        <link rel="stylesheet" title="style" href="css/style.css">
        <link rel="stylesheet" title="style" href="css/huong-style.css">
        <script language="JavaScript" src="JS/main.js"></script>
        <script language="JavaScript" src="JS/search.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <style>
            .row{
                margin-left: 0px !important;
                margin-right: 0px !important;
            }
            h4{
                padding-left: 15px;
            }
        </style>
        <jsp:include page="header.jsp" />
        <jsp:include page="menu.jsp" />
        <jsp:include page="slide.jsp"></jsp:include>
            <div class="beta-products-list">
                <h4 style="font-size:30px;color: red;font-weight: bold" class="mt15">Kết quả tìm kiếm</h4>
                <div class="row">
                <c:forEach var="product" items = "${listproduct}">
                    <div class="col-sm-3">
                        <div class="single-item">
                            <div class="single-item-header">
                                <a href="detail.jsp?id_product=${product.id_product}"><img src="image/product/${product.image}" width="300px" height="270px" alt=""></a>
                            </div>
                            <div class="single-item-body">
                                <p class="single-item-title">${product.name}</p>
                                <p class="single-item-price">
                                    <span>${product.unit_price}</span>
                                </p>
                            </div>
                                <div class="single-item-caption mb20">
                                <a class="add-to-cart pull-left" href="CartServlet?command=plus&id_product=${product.id_product}"><i class="fa fa-shopping-cart"></i></a>
                                <a class="beta-btn primary" href="detail.jsp?id_product=${product.id_product}">Details <i class="fa fa-chevron-right"></i></a>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    
                </c:forEach>
            </div>
        </div>




    </body>
</html>
