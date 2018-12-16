

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <jsp:include page="_head.jsp" />
    </head>
    <body>

        <jsp:include page="header.jsp" />
        <jsp:include page="menu.jsp" />
            <div class="container">
                <div id="content">
                    <div class="row">
                        <div class="col-sm-9">

                            <div class="row">
                                <div class="col-sm-4">
                                    <img src="image/product/" alt="">
                            </div>
                            <div class="col-sm-8">
                                <div class="single-item-body">
                                    <p class="single-item-title">${sanPham.getTenSanPham()}</p>
                                    <p class="single-item-price">
                                        <span>Giá</span>
                                    </p>
                                </div>

                                <div class="clearfix"></div>
                                <div class="space20">&nbsp;</div>

                                <div class="single-item-desc">
                                    <p>Mô tả</p>
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
<!--                                    <input type="text" placeholder="Nhập số lượng.." name="plus" value=""/>-->
                                    <!--                                    <select class="wc-select" name="color">
                                                                            <option>Số lượng</option>
                                                                            <option value="1"></option>
                                                                           
                                                                        </select>-->
                                    <a class="add-to-cart btn-giohang" href="#"><i class="fa fa-shopping-cart"></i></a>
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
