
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
        <div class="col-sm-3" style="margin-bottom: 10px;">
            <div class="single-item">
                <div class="single-item-header">
                    <a class="img-top" href="detail/${sp.getMasanpham()}" data-hinhsp="${sp.getHinhsanpham()}">
                        <img class="img-tos" style="width:475px;height: 356px " src="<c:url value="resources/Images/product/${sp.getHinhsanpham()}" />" alt="">
                    </a>
                </div>
                <div class="single-item-body">
                    <p class="masp" data-masp="${sp.getMasanpham()}" style="display: none"></p>

                    <p class="single-item-title"  data-namesp="${sp.getTensanpham()}">${sp.getTensanpham()} </p>
                    <p class="single-item-price" data-gia="${sp.getGiatien()}">
                        <span  >${sp.getGiatien()} VNĐ</span>
                    </p>

                </div>
                <div class="single-item-caption">
                    <a class="add-to-cart pull-left btn-giohang" ><i class="fa fa-shopping-cart"></i></a>
                    <a class="beta-btn primary" href="detail/${sp.getMasanpham()}">Details <i class="fa fa-chevron-right"></i></a>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </c:forEach>
        <p id="masoluong" data-masoluong="0" style="display: none">0</p>


</div> <!-- .beta-products-list -->