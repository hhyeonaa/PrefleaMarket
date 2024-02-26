<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="ao" class="edu.donga.ProductRepository" scope="session"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Preflea Market 상품 삭제</title>
</head>
<body>
    <%
    int id = Integer.parseInt(request.getParameter("id"));
    ao.removeProduct(id);
    pageContext.forward("preProductsList.jsp");
    %>

</body>
</html>