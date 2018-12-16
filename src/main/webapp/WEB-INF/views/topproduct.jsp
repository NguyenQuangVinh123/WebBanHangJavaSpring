
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<style>
    .row{
        margin-left: 0px !important;
        margin-right: 0px !important;
    }
    h4{
        padding-left: 15px;
    }
</style>
<div class="beta-products-list">
    <h4>Top Products</h4>
    <c:forEach var="sp" items="${listsp}">
        <div class="col-sm-3">
            <div class="single-item">
                <div class="single-item-header">
                    <a href="detail/${sp.getMasanpham()}"><img src="<c:url value="resources/Images/product/${sp.getHinhSp}" />" alt=""></a>
                </div>
                <div class="single-item-body">
                    <p class="single-item-title">${sp}</p>
                    <p class="single-item-price">
                        <span>${sp}</span>
                    </p>
                </div>
                <div class="single-item-caption">
                    <a class="add-to-cart pull-left" href="#"><i class="fa fa-shopping-cart"></i></a>
                    <a class="beta-btn primary" href="detail/${sp.getMasanpham()}">Details <i class="fa fa-chevron-right"></i></a>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </c:forEach>



</div> <!-- .beta-products-list -->