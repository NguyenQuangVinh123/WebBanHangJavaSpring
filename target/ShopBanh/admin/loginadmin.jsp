
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
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

    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    <link href="${root}/css/style.css" rel='stylesheet' type='text/css' />


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
                        <div class="g-recaptcha"
                             data-sitekey="6Le4w1wUAAAAAD3tzdijgHkxmRfEeEZKaC0vAho-"></div>
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
