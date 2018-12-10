<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <jsp:include page= "_head.jsp" />
        <title>Insert title here</title>
    </head>
    <body>
    <jsp:include page="header.jsp" />

    <jsp:include page="menu.jsp" />
        <div class="inner-header">
            <div class="container">
                <div class="pull-left">
                    <h6 class="inner-title">Đăng nhập</h6>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>

        <div class="container">
            <!-- /login?error=true -->
          
            <div id="content">
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <h4>Đăng nhập</h4>
                            <div class="space20">&nbsp;</div>
                            <div>
<!--                                <p style="color:red;"><%=request.getParameter("error") !=null %></p> -->
                            </div>

                            <div class="form-block">
                                <label for="email">Email address*</label>
                                <input type="email" id="email" name="email" required>
                            </div>
                            <div class="form-block">
                                <label for="password">Password*</label>
                                <input type="password" id="password" name="password" required>
                            </div>


                            <div class="form-block" style="display: flex;justify-content: center">
                                <input type="hidden" value ="login" name="command" />
                                <input type="submit" class="btn btn-primary" id="btn-login" value="Login" />
                            </div>

                        </div>
                        <div class="col-sm-3"></div>
                    </div>
                <span class="error-message">${error}</span>
            </div> <!-- #content -->
        </div> <!-- .container -->

    </body>
</html>