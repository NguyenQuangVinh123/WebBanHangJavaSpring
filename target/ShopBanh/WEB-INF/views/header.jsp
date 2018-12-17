<%@page import="java.util.Map"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" %>

<div id="header">
    <div class="header-top">
        <div class="container">
            <div class="pull-left auto-width-left">
                <ul class="top-menu menu-beta l-inline">
                    <li><a href="#"><i class="fa fa-home"></i> Địa chỉ</a></li>
                    <li><a href="#"><i class="fa fa-phone"></i> SDT</a></li>
                </ul>
            </div>
            <div class="pull-right auto-width-right">
                <ul class="top-details menu-beta l-inline">

                    <c:choose>
                        <c:when test="${chucaidau != null}">
                            <li style="border-left: none !important;border-right: none !important;"><p id="round_login_success">${chucaidau}</p></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="/dangky">Đăng ký</a></li>
                            <li><a href="dangnhap/">Đăng Nhập</a></li>

                        </c:otherwise>
                    </c:choose>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div> <!-- .container -->
    </div> <!-- .header-top -->
    <div class="header-body">
        <div class="container beta-relative">
            <div class="pull-left">
                <a href="index.jsp" id="logo"><img src="<c:url value="/resources/Images/logo.png" />" width="100px" alt=""></a>
            </div>
            <div class="pull-right beta-components space-left ov">
                <div class="space10">&nbsp;</div>
                <div class="beta-comp">
                    <jsp:include page="search.jsp"></jsp:include>
                </div>

                <div class="beta-comp">
                    <div class="cart">

                        <div class="beta-select"><i class="fa fa-shopping-cart"></i> Giỏ hàng  <i class="fa fa-chevron-down"></i></div>
                        <div class="beta-dropdown cart-body">
                            <div class="cart-item">
                                <div class="media">
                                    <a class="pull-left" href="#"><img src="<c:url value="resources/Images/logo.png" />" alt="" width="50px" height="50px"></a>

                                    <div class="media-body pl20">
                                        <span class="cart-item-title"></span>

                                        <span class="cart-item-amount">100 đồng</span><a href="#" style="float: right;"><i class="fas fa-times fa-2x"></i></a></span>

                                    </div>
                                </div>
                            </div>
                            <%--<% }%>--%>
                            <div class="cart-caption">
                                <div class="cart-total text-right">Tổng tiền: <span class="cart-total-value"></span></div>
                                <div class="clearfix"></div>

                                <div class="center">
                                    <div class="space10">&nbsp;</div>
                                    <a href="checkout.jsp" class="beta-btn primary text-center">Đặt hàng <i class="fa fa-chevron-right"></i></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div> <!-- .container -->
    </div> <!-- .header-body -->

</div> <!-- #header -->


