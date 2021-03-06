

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <jsp:include page="_head.jsp" />
        <title>Trang Chi Tiet</title>
    </head>
    <body>

        <jsp:include page="header.jsp" />
        <jsp:include page="menu.jsp" />
            <div class="container">
                <div id="content">
                    <div class="row">
                        <div class="col-sm-9">

                            <div class="row single-item">
                                <div class="col-sm-4">
                                    <p class="masp" data-masp="${sanPham.getMasanpham()}" style="display: none"></p>
                                    <p id="masoluong" data-masoluong="0" style="display: none">0</p>

                                    <img class="img-top" data-hinhsp="${sanPham.getHinhsanpham()}" src="<c:url value="/resources/Images/product/${sanPham.getHinhsanpham()}" />" alt="">
                            </div>
                                <%--<p class="masp" data-masp="${sanPham.getMachitiet()}" style="display: none"></p>--%>

                                <div class="col-sm-8">
                                <div class="single-item-body">
                                    <p class="single-item-title" data-namesp="${sanPham.getTensanpham()}">${sanPham.getTensanpham()}</p>
                                    <p class="single-item-price" data-gia="${sanPham.getGiatien()}">

                                    <span>${sanPham.getGiatien()} VND</span>
                                    </p>
                                </div>

                                <div class="clearfix"></div>
                                <div class="space20">&nbsp;</div>

                                <div class="single-item-desc">
                                    <p>${sanPham.getMota()}</p>
                                </div>
                                <div class="space20">&nbsp;</div>

                                <div class="single-item-options">

                                    <a class="add-to-cart btn-giohang"><i class="fa fa-shopping-cart"></i></a>
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
                                <p></p>
                            </div>

                        </div>
                        <div class="space50">&nbsp;</div>
                        <div class="beta-products-list">

                        </div>
                    </div>
                </div> <!-- #content -->
            </div> <!-- .container -->
            </div>
    </body>
</html>
