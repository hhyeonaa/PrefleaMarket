<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Preflea Market</title>
</head>
<body>
<h1> 오류가 발생했습니다. </h1>
예외 : <%= exception.getMessage() %>
</body>
</html>