<%@page import="model.ProductType"%>
<%@page import="dao.ProductTypeDAO"%>
<link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
    src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<link rel="stylesheet" title="style" href="css/style.css">
<link rel="stylesheet" title="style" href="css/huong-style.css">
<script language="JavaScript" src="JS/main.js"></script>
<% ProductTypeDAO productTypeDAO = new ProductTypeDAO();
%>
<ul class="aside-menu">
    <% for (ProductType c : productTypeDAO.getListProductType()) {%>
    <li><a href="product.jsp?id_type_product=<%=c.getId_type_product() %>"><%=c.getName() %></a></li>
        <% }%>

</ul>