

<%@page import="dao.UsersDAO"%>
<%@page import="model.Bill"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BillDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <link rel="stylesheet" title="style" href="style.css">
    <link rel="stylesheet" title="style" href="huong-style.css">
        <title>Quản lý hóa đơn</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
        
        <%
           BillDAO billDAO = new BillDAO();
           ArrayList<Bill> listBill = billDAO.getListBill();
           UsersDAO usersDAO = new UsersDAO();
        %>

        <jsp:include page="header_admin.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu_admin.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý hóa đơn</h3>

                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">Mã hóa đơn</th>
                            <th class="data">Khách hàng</th>
                            <th class="data">Tổng hóa đơn</th>
                            <th class="data">Thanh toán</th>
                            <th class="data">Địa chỉ giao hàng</th>
                            <th class="data">Ngày mua</th>
                            <th class="data" width="75px">Tùy chọn</th>
                        </tr>
                        
                        <%for(Bill bill : listBill){%>
                        <tr class="data">
                            <td class="data" width="30px"><%=bill.getId_bill()%></td>
                            <td class="data"><%=usersDAO.getUser(bill.getId_user()).getEmail()%></td>
                            <td class="data"><%=bill.getTotal()%></td>
                            <td class="data"><%=bill.getPayment()%></td>
                            <td class="data"><%=bill.getAddress()%></td>
                            <td class="data"><%=bill.getDate_order()%></td>
                            <td class="data" width="75px">
                                <center>
                                    <a href="#">Xác nhận</a>&nbsp;|&nbsp;
                                    <a href="#"><span>Hủy</span></a>
                                </center>
                            </td>
                        </tr>
                        <%}%>

                    </table>
                </div>
                <div class="clear"></div>



        </div>


    </body>
</html>
