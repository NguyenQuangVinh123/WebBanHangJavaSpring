<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <jsp:include page="_head.jsp" />

        <title>Signup</title>
    </head>
    <body>
    <jsp:include page="header.jsp" />
    <jsp:include page="menu.jsp" />
            <div class="inner-header">
                <div class="container">
                    <div class="pull-left">
                        <h6 class="inner-title"></h6>
                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="container">
                <div id="content">
                    <form action="DangKy" method="POST" class="beta-form-checkout">
                        <div class="row">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-6">
                                <h4>Đăng ký</h4>
                                <div class="space20">&nbsp
                                    <div class="form-block">
                                        <label for="signup_email">Email address*</label>
                                        <input type="email" id="signup_email" name="signup_email" required placeholder="Nhập Email...">
                                        <span class="pt10" id="user-result" style="width: 20px; height: 20px;"></span>
                                    </div>
                                    <div class="form-block">
                                        <label for="signup_password">Password*</label>
                                        <input type="password" id="signup_password" name="signup_password" required placeholder="Nhập password...">
                                    </div>
                                    <div class="form-block">
                                        <label for="repassword">RePassword*</label>
                                        <input type="password" id="repassword" name="repassword" required placeholder="Nhập lại  password...">
                                    </div>

                                    <div class="form-block">
                                        <input type="hidden" value="insert" name="command" />
                                        <input type="submit" class="btn btn-primary" value="Đăng ký" />
                                    </div>
                                </div>
                                <div class="row">${kiemtradangnhap}</div>
                            </div>
                        </div>
                    </form>
                </div> <!-- #content -->
            </div> <!-- .container -->
    </body>
</html>