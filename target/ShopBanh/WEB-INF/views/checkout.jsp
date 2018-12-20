<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="_head.jsp"/>

    <title>Đặt hàng</title>
</head>
<body>
<script>
    $(document).on("click", ".alert", function (e) {
        bootbox.alert("Bạn đã mua hàng thành công", function () {

            console.log("Alert Callback");
        });
    });
</script>
<jsp:include page="header.jsp"/>
<jsp:include page="menu.jsp"/>

<div class="inner-header">
    <div class="container">
        <div class="pull-left">
            <h6 class="inner-title">Đặt hàng</h6>
        </div>

        <div class="clearfix"></div>
    </div>
</div>

<div class="container">
    <div id="content">
    <form method="post"  >

        <div class="row">
                <div class="col-sm-6">
                    <h4></h4>
                    <div class="space20">&nbsp;</div>

                    <div class="form-block">
                        <label for="name">Họ tên*</label>
                        <input type="text" id="name" name="tenkhachhang" placeholder="Họ và tên" required>
                    </div>

                    <div class="form-block">
                        <label for="adress">Địa chỉ giao hàng*</label>
                        <input type="text" id="adress" name="diachigiaohang" placeholder="Địa chỉ giao hàng" required >
                    </div>

                    <div class="form-block">
                        <label for="phone">Điện thoại*</label>
                        <input type="text" id="phone" name="sodt" placeholder="Số điện thoại liên lạc" required>
                    </div>
                    <div class="form-block">
                        <label for="phone">Ghi chú</label>
                        <textarea type="text"  name="ghichu" placeholder="Ghi chú" ></textarea>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="your-order">
                        <div class="your-order-head"><h5>Đơn hàng của bạn</h5></div>
                        <div class="your-order-body" style="padding: 0px 10px">
                            <c:forEach var="value" items="${giohangs}">
                                <div class="your-order-item">
                                    <p class="masp" data-masp="${value.masp}" style="display: none"></p>

                                    <div class="media">
                                        <img width="25%" src="<c:url value="resources/Images/product/${value.hinhsp}" />" alt="" class="pull-left">
                                        <div class="media-body">
                                            <p class="font-large">Tên sản phẩm : ${value.tensp}<button  style="margin-right: 15px;: 25px;float:right;padding: 15px;color: red" class="beta-btn-dodger btn-xoa">Xóa</button></p>
                                            <span class="color-gray your-order-info mb10">Số lượng : <input min="1" class="soluong-giohang" type="number" value="${value.soluong}" /></span>
                                            <span class="color-gray your-order-info mb10 giatien" data-value="${value.giatien}" >Giá tiền: ${value.giatien}VNĐ</span>
                                            <span class="color-gray your-order-info " >Thành tiền: <span class="thanhtien" data-thanhtien = ${value.giatien*value.soluong}>${value.giatien*value.soluong}</span> VNĐ</span>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </c:forEach>

                            <div class="your-order-item">
                                <div class="pull-left"><p class="your-order-f18" style="color: red;font-size: 22px" >Tổng tiền:<span id="tongtien"></span>  VND</p></div>
                                <div class="pull-right"><h5 class="color-black"></h5></div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="your-order-head"><h5>Hình thức thanh toán</h5></div>

                        <div class="your-order-body">
                            <ul class="payment_methods methods">
                                <li class="payment_method_bacs">
                                    <input id="payment_method_bacs" type="radio" class="input-radio"
                                           name="hinhthucgiaohang" value="COD" checked="checked"
                                           data-order_button_text="">
                                    <label for="payment_method_bacs">Thanh toán khi nhận hàng </label>
                                    <div class="payment_box payment_method_bacs" style="display: block;">
                                        Cửa hàng sẽ gửi hàng đến địa chỉ của bạn, bạn xem hàng rồi thanh toán tiền cho
                                        nhân viên giao hàng
                                    </div>
                                </li>

                                <li class="payment_method_cheque">
                                    <input id="payment_method_cheque" type="radio" class="input-radio"
                                           name="hinhthucgiaohang" value="ATM" data-order_button_text="">
                                    <label for="payment_method_cheque">Chuyển khoản </label>
                                    <div class="payment_box payment_method_cheque" style="display: none;">
                                        Chuyển tiền đến tài khoản sau:
                                        <br>- Số tài khoản: 123 456 789
                                        <br>- Chủ TK: Nguyễn A
                                        <br>- Ngân hàng ABC, Chi nhánh TPHCM
                                    </div>
                                </li>

                            </ul>
                        </div>

                        <div class="text-center"><input class="alert" style="padding: 10px;background-color: red" type="submit" value="Đặt hàng" /> </div>
                    </div>
                </div>
            </div>
    </form>
    </div>

</div> <!-- #content -->
</div> <!-- .container -->

</body>
</html>