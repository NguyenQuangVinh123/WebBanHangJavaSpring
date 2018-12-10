
<%@page import="model.Item"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Chi tiết sản phẩm</title>
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
            ProductDAO productDAO = new ProductDAO();
            Product product = new Product();
            String id_product = "";
            if (request.getParameter("id_product") != null) {
                id_product = request.getParameter("id_product");
                product = productDAO.getProduct(Long.parseLong(id_product));
            }

            Item item = new Item();
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container">
                <div id="content">
                    <div class="row">
                        <div class="col-sm-9">

                            <div class="row">
                                <div class="col-sm-4">
                                    <img src="image/product/<%=product.getImage()%>" alt="">
                            </div>
                            <div class="col-sm-8">
                                <div class="single-item-body">
                                    <p class="single-item-title"><%=product.getName()%></p>
                                    <p class="single-item-price">
                                        <span><%=product.getUnit_price()%></span>
                                    </p>
                                </div>

                                <div class="clearfix"></div>
                                <div class="space20">&nbsp;</div>

                                <div class="single-item-desc">
                                    <p><%=product.getDescription()%></p>
                                </div>
                                <div class="space20">&nbsp;</div>

<!--                                <p>Options:</p>-->
                                <div class="single-item-options">
                                    <!--                                    <select class="wc-select" name="size">
                                                                            <option>Size</option>
                                                                            <option value="XS">XS</option>
                                                                            <option value="S">S</option>
                                                                            <option value="M">M</option>
                                                                            <option value="L">L</option>
                                                                            <option value="XL">XL</option>
                                                                        </select>
                                                                        <select class="wc-select" name="color">
                                                                            <option<>Color</option>
                                                                            <option value="Red">Red</option>
                                                                            <option value="Green">Green</option>
                                                                            <option value="Yellow">Yellow</option>
                                                                            <option value="Black">Black</option>
                                                                            <option value="White">White</option>
                                                                        </select>-->
<!--                                    <input type="text" placeholder="Nhập số lượng.." name="plus" value="<%=item.getQuantity()%>"/>-->
                                    <!--                                    <select class="wc-select" name="color">
                                                                            <option>Số lượng</option>
                                                                            <option value="1"></option>
                                                                           
                                                                        </select>-->
                                    <a class="add-to-cart" href="CartServlet?command=plus&id_product=<%=product.getId_product()%>"><i class="fa fa-shopping-cart"></i></a>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                        <div class="space40">&nbsp;</div>
                        <div class="woocommerce-tabs">
                            <ul class="tabs">
                                <li><a href="#tab-description">Description</a></li>
                                <li><a href="#tab-reviews">Reviews (0)</a></li>
                            </ul>

                            <div class="panel" id="tab-description">
                                <p><%=product.getDescription()%></p>
                            </div>
                            <!--                            <div class="panel" id="tab-reviews">
                                                            <p>No Reviews</p>
                                                        </div>-->
                        </div>
                        <div class="space50">&nbsp;</div>
                        <div class="beta-products-list">
                            <!--<h4>Related Products</h4>-->

                            <!--                            <div class="row">
                                                            <div class="col-sm-4">
                                                                <div class="single-item">
                                                                    <div class="single-item-header">
                                                                        <a href="product.html"><img src="assets/dest/images/products/4.jpg" alt=""></a>
                                                                    </div>
                                                                    <div class="single-item-body">
                                                                        <p class="single-item-title">Sample Woman Top</p>
                                                                        <p class="single-item-price">
                                                                            <span>$34.55</span>
                                                                        </p>
                                                                    </div>
                                                                    <div class="single-item-caption">
                                                                        <a class="add-to-cart pull-left" href="product.html"><i class="fa fa-shopping-cart"></i></a>
                                                                        <a class="beta-btn primary" href="product.html">Details <i class="fa fa-chevron-right"></i></a>
                                                                        <div class="clearfix"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="single-item">
                                                                    <div class="single-item-header">
                                                                        <a href="product.html"><img src="assets/dest/images/products/5.jpg" alt=""></a>
                                                                    </div>
                                                                    <div class="single-item-body">
                                                                        <p class="single-item-title">Sample Woman Top</p>
                                                                        <p class="single-item-price">
                                                                            <span>$34.55</span>
                                                                        </p>
                                                                    </div>
                                                                    <div class="single-item-caption">
                                                                        <a class="add-to-cart pull-left" href="product.html"><i class="fa fa-shopping-cart"></i></a>
                                                                        <a class="beta-btn primary" href="product.html">Details <i class="fa fa-chevron-right"></i></a>
                                                                        <div class="clearfix"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="single-item">
                                                                    <div class="ribbon-wrapper"><div class="ribbon sale">Sale</div></div>
                            
                                                                    <div class="single-item-header">
                                                                        <a href="#"><img src="assets/dest/images/products/6.jpg" alt=""></a>
                                                                    </div>
                                                                    <div class="single-item-body">
                                                                        <p class="single-item-title">Sample Woman Top</p>
                                                                        <p class="single-item-price">
                                                                            <span class="flash-del">$34.55</span>
                                                                            <span class="flash-sale">$33.55</span>
                                                                        </p>
                                                                    </div>
                                                                    <div class="single-item-caption">
                                                                        <a class="add-to-cart pull-left" href="#"><i class="fa fa-shopping-cart"></i></a>
                                                                        <a class="beta-btn primary" href="#">Details <i class="fa fa-chevron-right"></i></a>
                                                                        <div class="clearfix"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>  .beta-products-list 
                                                </div>
                                                <div class="col-sm-3 aside">
                                                    <div class="widget">
                                                        <h3 class="widget-title">Best Sellers</h3>
                                                        <div class="widget-body">
                                                            <div class="beta-sales beta-lists">
                                                                <div class="media beta-sales-item">
                                                                    <a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/1.png" alt=""></a>
                                                                    <div class="media-body">
                                                                        Sample Woman Top
                                                                        <span class="beta-sales-price">$34.55</span>
                                                                    </div>
                                                                </div>
                                                                <div class="media beta-sales-item">
                                                                    <a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/2.png" alt=""></a>
                                                                    <div class="media-body">
                                                                        Sample Woman Top
                                                                        <span class="beta-sales-price">$34.55</span>
                                                                    </div>
                                                                </div>
                                                                <div class="media beta-sales-item">
                                                                    <a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/3.png" alt=""></a>
                                                                    <div class="media-body">
                                                                        Sample Woman Top
                                                                        <span class="beta-sales-price">$34.55</span>
                                                                    </div>
                                                                </div>
                                                                <div class="media beta-sales-item">
                                                                    <a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/4.png" alt=""></a>
                                                                    <div class="media-body">
                                                                        Sample Woman Top
                                                                        <span class="beta-sales-price">$34.55</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>  best sellers widget 
                                                    <div class="widget">
                                                        <h3 class="widget-title">New Products</h3>
                                                        <div class="widget-body">
                                                            <div class="beta-sales beta-lists">
                                                                <div class="media beta-sales-item">
                                                                    <a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/1.png" alt=""></a>
                                                                    <div class="media-body">
                                                                        Sample Woman Top
                                                                        <span class="beta-sales-price">$34.55</span>
                                                                    </div>
                                                                </div>
                                                                <div class="media beta-sales-item">
                                                                    <a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/2.png" alt=""></a>
                                                                    <div class="media-body">
                                                                        Sample Woman Top
                                                                        <span class="beta-sales-price">$34.55</span>
                                                                    </div>
                                                                </div>
                                                                <div class="media beta-sales-item">
                                                                    <a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/3.png" alt=""></a>
                                                                    <div class="media-body">
                                                                        Sample Woman Top
                                                                        <span class="beta-sales-price">$34.55</span>
                                                                    </div>
                                                                </div>
                                                                <div class="media beta-sales-item">
                                                                    <a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/4.png" alt=""></a>
                                                                    <div class="media-body">
                                                                        Sample Woman Top
                                                                        <span class="beta-sales-price">$34.55</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>  best sellers widget -->
                        </div>
                    </div>
                </div> <!-- #content -->
            </div> <!-- .container -->

    </body>
</html>
