
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>

    <jsp:include page="_head.jsp" />


    <title>Login Admin Page</title>
</head>
<body>
    <div class="container">
        <!-- /login?error=true -->

        <div id="content">
            <form action="../CheckLoginAdminPage"  class="beta-form-checkout" method="POST">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <h4>Đăng nhập</h4>
                        <div class="space20">&nbsp;</div>
                        <div>
<!--                                <p style="color:red;"><%=request.getParameter("error") != null%></p> -->
                        </div>

                        <div class="form-block">
                            <label for="email">Email address*</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-block">
                            <label for="phone">Password*</label>
                            <input type="password" id="phone" name="pass" required>
                        </div>
                        <!-- reCAPTCHA -->

                        <div class="form-block" style="margin: 0 auto;width: 30%">
                            <input type="hidden" value ="login" name="command" />
                            <button type="submit" class="btn btn-primary" style="width: 80%;margin: 0 auto">Đăng nhập</button>
                        </div>
                    </div>
                    <div class="col-sm-3"></div>
                </div>
            </form>
            <span class="error-message">${error}</span>
        </div> <!-- #content -->
    </div> <!-- .container -->
</body>
</html>
