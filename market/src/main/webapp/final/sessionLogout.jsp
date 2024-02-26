<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Preflea Market Logout</title>
</head>
<body>
<%
   String id = request.getParameter("id");
   session.setAttribute("Id", id);
   request.setAttribute("message", id + "님 다음에 또 뵈어요:->");
   session.invalidate();
   response.sendRedirect("main.jsp");
%>
</body>
</html>