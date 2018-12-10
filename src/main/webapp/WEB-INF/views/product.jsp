
<%@page import="model.ProductType"%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Sản phẩm theo loại</title>
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">	<link rel="stylesheet" href="assets/dest/rs-plugin/css/settings.css">
        <link rel="stylesheet" title="style" href="css/style.css">
        <link rel="stylesheet" title="style" href="css/huong-style.css">
        <script language="JavaScript" src="JS/main.js"></script>
    </head>
    <body>
        <%
            ProductType pt = new ProductType();
            ProductDAO productDAO = new ProductDAO();
            long id_type_product = 0;
            if (request.getParameter("id_type_product") != null) {
                id_type_product = (Long) Long.parseLong(request.getParameter("id_type_product"));
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart != null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            int pages = 0, firstResult = 0, maxResult = 0, total = 0;
            if (request.getParameter("pages") != null) {
                pages = (int) Integer.parseInt(request.getParameter("pages"));
            }
            total = productDAO.countProductByTypeProduct(id_type_product);
            if (total <= 6) {
                firstResult = 1;
                maxResult = total;
            } else {
                firstResult = (pages - 1) * 6;
                maxResult = 6;
            }
            ArrayList<Product> listProduct = productDAO.getListProductByPages(id_type_product, firstResult, maxResult);

        %>
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="inner-header">
                <div class="container">
                    <div class="pull-left">
                        <h6 class="inner-title">Sản phẩm </h6>
                    </div>

                </div>
            </div>
            <div class="container">
                <div id="content" class="space-top-none">
                    <div class="main-content">
                        <div class="space60">&nbsp;</div>
                        <div class="row">
                            <div class="col-sm-3">
                            <jsp:include page="leftmenu_product_type.jsp" />
                        </div>
                        <div class="col-sm-9">
                            <div class="beta-products-list">
                                <h4>Sản phẩm</h4>
                                <div class="row">
                                    <% for (Product p : listProduct) {%>
                                    <div class="col-sm-4">
                                        <div class="single-item">
                                            <div class="single-item-header">
                                                <a href="detail.jsp?id_product=<%=p.getId_product()%>&pages=1"><img src="image/product/<%=p.getImage()%>" alt="" width="320px" height="270px"></a>
                                            </div>
                                            <div class="single-item-body">
                                                <p class="single-item-title"><%=p.getName()%></p>
                                                <p class="single-item-price">
                                                    <span><%=p.getUnit_price()%></span>
                                                </p>
                                            </div>
                                            <div class="single-item-caption">
                                                <a class="add-to-cart pull-left" href="CartServlet?command=plus&id_product=<%=p.getId_product()%>"><i class="fa fa-shopping-cart"></i></a>
                                                <a class="beta-btn primary" href="detail.jsp?id_product=<%=p.getId_product()%>">Details <i class="fa fa-chevron-right"></i></a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="mb25"></div>
                                    </div> 

                                    <%}%>
                                </div>

                            </div> <!-- .beta-products-list -->
                            <ul class="pagination">
                                
                            
                                <% for (int i=1; i<=(total/6)+1;i++){ 
                                %>
                                
                                <li class=""><a href="product.jsp?id_type_product=<%=id_type_product %>&pages=<%=i %>"><%=i%></a></li>
                                <% }%>
                             
                            </ul>
                            <div class="space50">&nbsp;</div>

                            <!--                            <div class="beta-products-list">
                                                            <h4>Top Products</h4>
                                                            <div class="beta-products-details">
                                                                <p class="pull-left">438 styles found</p>
                                                                <div class="clearfix"></div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-sm-4">
                                                                    <div class="single-item">
                                                                        <div class="single-item-header">
                                                                            <a href="product.html"><img src="image/2.gif" alt=""></a>
                                                                        </div>
                                                                        <div class="single-item-body">
                                                                            <p class="single-item-title">Sample Woman Top</p>
                                                                            <p class="single-item-price">
                                                                                <span>$34.55</span>
                                                                            </p>
                                                                        </div>
                                                                        <div class="single-item-caption">
                                                                            <a class="add-to-cart pull-left" href="shopping_cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                            <a class="beta-btn primary" href="product.html">Details <i class="fa fa-chevron-right"></i></a>
                                                                            <div class="clearfix"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="space40">&nbsp;</div>
                            
                                                        </div>  .beta-products-list -->

                        </div> 

                    </div>
                </div> <!-- .main-content -->
            </div> <!-- #content -->
        </div> <!-- .container -->
        <!-- JS -->

    </body>	
</html>