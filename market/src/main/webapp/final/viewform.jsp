<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 데이터</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); 
 String id = request.getParameter("id");
 String password = request.getParameter("password");
 String name = request.getParameter("name");
 String phone = request.getParameter("phone");
 String address = request.getParameter("address");
 String gender = request.getParameter("gender");
 String[] interest = request.getParameterValues("interest");
 String nickname = request.getParameter("nickname");
 String comment = request.getParameter("comment");

 out.println("별명 :" + nickname + "<br>"); %>
 ID : <%= id %> <br>
 PASSWORD : <%= password %> <br>
   이름 : <%= name %> <br>
   전화번호 : <%= phone %> <br>
   주소 : <%= address %> <br>
   성별 : <%= gender %> <br>
   관심분야 : 
<%  if(interest != null) {
    for(int i=0; i<interest.length; i++)
	out.println("  " + interest[i]);
    } %>
<br>
인사말 : <%= comment %>
<h1>요청파라메트의 전체값 받아서 출력</h1>
<table border="1">
<tr>
     <th>파라메타 이름</th>
     <th>파라메타 값</th>
</tr>
<%
  Enumeration pNames = request.getParameterNames();
  while(pNames.hasMoreElements()){
	  String pName = (String) pNames.nextElement();
	  out.print("<tr><td>" + pName + "</td>");
	  String pValue = request.getParameter(pName);
	  out.print("<td>" + pValue + "<td></tr>");
  }
%>
</table>
<hr>
<h1> headerNames 사용</h1>
<%
  Enumeration<String> hNames = request.getHeaderNames();
  while(hNames.hasMoreElements()){
	  String hName = (String) hNames.nextElement();
	  String hValue = request.getHeader(hName);
	  out.println(hName + " : " + hValue + "<br>");
  }
%>


</body>
</html>