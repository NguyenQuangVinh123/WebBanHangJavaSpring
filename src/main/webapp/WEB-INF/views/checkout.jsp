<%@page import="model.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script
            src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
        crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        <link rel="stylesheet" title="style" href="css/style.css">
        <link rel="stylesheet" title="style" href="css/huong-style.css">
        <script language="JavaScript" src="JS/main.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>

        <title>Đặt hàng</title>
    </head>
    <body>
        <%
            Users users = (Users) session.getAttribute("user");


        %>
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>

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

                <form action="CheckOutServlet" method="post" class="beta-form-checkout">
                    <div class="row">
                        <div class="col-sm-6 ml85">
                            <h4></h4>
                            <div class="space20">&nbsp;</div>

                            <div class="form-block">
                                <label for="name">Họ tên*</label>
                                <input type="text" id="name" name="name" placeholder="Họ và tên" required>
                            </div>


                            <div class="form-block">
                                <label for="email">Email*</label>
                                <input type="email" id="email" name="email" required placeholder="expample@gmail.com">
                            </div>

                            <div class="form-block">
                                <label for="adress">Địa chỉ*</label>
                                <input type="text" id="adress" name="address" placeholder="Street Address" required>
                            </div>


                            <div class="form-block">
                                <label for="phone">Điện thoại*</label>
                                <input type="text" id="phone" name="phone" required>
                            </div>
                            <div class="form-block">
                                <label >Hình thức thanh toán*</label>
                                <select name="payment" >
                                    <option value="Bank transfer">Bank transfer</option>
                                    <option value="live">Giao tiền khi nhận hàng</option>

                                </select>
                            </div>
                            <div class="form-block ml85" style="font-size: 20px;">
                                <input type="submit" class="alert" style="padding: 20px;" value="Đặt hàng" >
                            </div>
                        </div>
                    </div>
                    <script>
                        $(document).on("click", ".alert", function (e) {
                            bootbox.alert("Bạn đã mua hàng thành công", function () {
                                
                                console.log("Alert Callback");
                            });
                        });
                    </script>
                </form>

                <!--					<div class="col-sm-6">
                                                                <div class="your-order">
                                                                        <div class="your-order-head"><h5>Đơn hàng của bạn</h5></div>
                                                                        <div class="your-order-body" style="padding: 0px 10px">
                                                                                <div class="your-order-item">
                                                                                        <div>
                                                                                          one item	 
                                                                                                <div class="media">
                                                                                                        <img width="25%" src="assets/dest/images/shoping1.jpg" alt="" class="pull-left">
                                                                                                        <div class="media-body">
                                                                                                                <p class="font-large">Men's Belt</p>
                                                                                                                <span class="color-gray your-order-info">Color: Red</span>
                                                                                                                <span class="color-gray your-order-info">Size: M</span>
                                                                                                                <span class="color-gray your-order-info">Qty: 1</span>
                                                                                                        </div>
                                                                                                </div>
                                                                                         end one item 
                                                                                        </div>
                                                                                        <div class="clearfix"></div>
                                                                                </div>
                                                                                <div class="your-order-item">
                                                                                        <div class="pull-left"><p class="your-order-f18">Tổng tiền:</p></div>
                                                                                        <div class="pull-right"><h5 class="color-black">$235.00</h5></div>
                                                                                        <div class="clearfix"></div>
                                                                                </div>
                                                                        </div>
                                                                        <div class="your-order-head"><h5>Hình thức thanh toán</h5></div>
                                                                        
                                                                        <div class="your-order-body">
                                                                                <ul class="payment_methods methods">
                                                                                        <li class="payment_method_bacs">
                                                                                                <input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
                                                                                                <label for="payment_method_bacs">Thanh toán khi nhận hàng </label>
                                                                                                <div class="payment_box payment_method_bacs" style="display: block;">
                                                                                                        Cửa hàng sẽ gửi hàng đến địa chỉ của bạn, bạn xem hàng rồi thanh toán tiền cho nhân viên giao hàng
                                                                                                </div>						
                                                                                        </li>
                
                                                                                        <li class="payment_method_cheque">
                                                                                                <input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="ATM" data-order_button_text="">
                                                                                                <label for="payment_method_cheque">Chuyển khoản </label>
                                                                                                <div class="payment_box payment_method_cheque" style="display: none;">
                                                                                                        Chuyển tiền đến tài khoản sau:
                                                                                                        <br>- Số tài khoản: 123 456 789
                                                                                                        <br>- CChủ TK: Nguyễn A
                                                                                                        <br>- Ngân hàng OCB, Chi nhánh TPHCM
                                                                                                </div>						
                                                                                        </li>
                                                                                        
                                                                                </ul>
                                                                        </div>
                
                                                                        <div class="text-center"><a class="beta-btn primary" href="#">Đặt hàng <i class="fa fa-chevron-right"></i></a></div>
                                                                </div>  .your-order 
                                                        </div> -->
            </div>

        </div> <!-- #content -->
    </div> <!-- .container -->

</body>
</html>