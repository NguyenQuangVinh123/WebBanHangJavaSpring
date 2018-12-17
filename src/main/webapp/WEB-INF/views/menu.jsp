<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

		<div class="header-bottom" style="background-color: #0277b8;">
			<div class="container">
				<a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="fa fa-bars"></i></a>
				<div class="visible-xs clearfix"></div>
				<nav class ="main-menu">
					<ul class="l-inline ov">
						<li><a href="/">Trang chủ</a></li>
						<li><a href="#">Sản phẩm</a>
							<ul class="sub-menu">
								<c:forEach var="value" items="${listdanhmuc}">
									<li><a href="<c:url value="sanpham/${value.getMadanhmuc()}/${value.getTendanhmuc()}" />">${value.getTendanhmuc()}</a></li>

								</c:forEach>
								<li>a</li>
							</ul>
						</li>
						<li><a href="about.jsp">Giới thiệu</a></li>
						<li><a href="contacts.jsp">Liên hệ</a></li>
					</ul>
					<div class="clearfix"></div>
				</nav>
			</div> <!-- .container -->
		</div> <!-- .header-bottom -->
