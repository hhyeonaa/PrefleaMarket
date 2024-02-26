<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Preflea Market Login</title>
</head>
<body>
<%
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  
  if(id.equals("admin") && pw.equals("1234")) {
	  session.setAttribute("Id", id);
	  request.setAttribute("message", id + "님 환영합니다.");
  } else{
	  request.setAttribute("message", "비밀번호가 다릅니다. 다시 로그인해주세요.");
  }
%>
<%= request.getAttribute("message") %>
<script>
alert("메인 화면으로 돌아갑니다.");
location.href="main.jsp";
</script>
</body>
</html>
