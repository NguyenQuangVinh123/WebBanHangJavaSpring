

<%@page import="dao.UsersDAO"%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>
<%  Users users= new Users(); %>
        <div id="header">
            <div class="inHeader">
                <div class="mosAdmin">
                    Hello,<%=users.getFull_name() %><br>
                   
                </div>
                <div class="clear"></div>
            </div>
        </div> 

    </body>
</html>
