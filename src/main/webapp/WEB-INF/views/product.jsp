
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<html>
    <head>
        <title>Sản phẩm theo loại</title>
       <jsp:include page="_head.jsp" />
    </head>
    <body>

        <jsp:include page="header.jsp" />
        <jsp:include page="menu.jsp" />
            <div class="inner-header">
                <div class="container">
                    <div class="pull-left">
                        <h6 class="inner-title">${tendanhmuc} </h6>
                    </div>

                </div>
            </div>
            <div class="container">
                <div id="content" class="space-top-none">
                    <div class="main-content">
                        <div class="space60">&nbsp;</div>
                        <div class="row">
                            <div class="col-sm-3">
                            <jsp:include page="admin/leftmenu_product_type.jsp" />
                        </div>
                        <div class="col-sm-9">
                            <div class="beta-products-list">
                                <h4>${tendanhmuc}</h4>
                                <div class="row">
                                    <c:forEach var="sp" items="${sanPhamList}">

                                    <div class="col-sm-4">
                                        <div class="single-item">
                                            <div class="single-item-header">
                                                <p class="masp" data-masp="${sp.getMasanpham()}" style="display: none"></p>

                                                <a class="img-top" data-hinhsp="${sp.getHinhsanpham()}" href="<c:url value="/detail/${sp.getMasanpham()}" />"><img src="<c:url value="/resources/Images/product/${sp.getHinhsanpham()}" />" alt="" width="320px" height="270px"></a>
                                            </div>
                                            <div class="single-item-body">
                                                <p class="single-item-title"  data-namesp="${sp.getTensanpham()}">${sp.getTensanpham()}</p>
                                                <p class="single-item-price" data-gia="${sp.getGiatien()}">
                                                    <span>${sp.getGiatien()}</span>
                                                </p>
                                            </div>
                                            <div class="single-item-caption">
                                                <a class="add-to-cart pull-left btn-giohang" ><i class="fa fa-shopping-cart"></i></a>
                                                <a class="beta-btn primary" href="<c:url value="/detail/${sp.getMasanpham()}" />">Details <i class="fa fa-chevron-right"></i></a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="mb25"></div>
                                    </div> 
                                    </c:forEach>
                                    <p id="masoluong" data-masoluong="0" style="display: none">0</p>

                                </div>

                            </div> <!-- .beta-products-list -->
                            <ul class="pagination">
                                
                            

                                
                                <li class=""><a href=""></a></li>

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