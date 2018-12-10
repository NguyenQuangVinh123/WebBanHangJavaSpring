<%-- 
    Document   : search
    Created on : Jun 7, 2018, 9:34:00 PM
    Author     : vinhnq
--%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search</title>
    </head>
    <body>
        <form role="search" name="myform" method="get" id="searchform" action="" onkeyup="Search()">
            <input type="text" name="name" value="" id="searchProductID" placeholder="Tìm kiếm..."  />
        </form>
      
    <dir id="searchresult"></dir>
</body>
</html>
