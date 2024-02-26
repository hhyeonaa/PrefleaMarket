<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>   
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓 상품 이미지 업로드 확인</title>
</head>
<body>
<% MultipartRequest multi = new MultipartRequest(request, "C:\\files", 7*1024*1024, "UTF-8",
		new DefaultFileRenamePolicy()); 
   String title = multi.getParameter("title");
   out.print("<h3>" + title + "</h3>");
   Enumeration files = multi.getFileNames();
   String name = (String) files.nextElement();
   String filename = multi.getFilesystemName(name);
   String original = multi.getOriginalFileName(name);
   out.print("실제파일이름:" + original + "<br>");
   out.print("저장파일이름:" + filename + "<br>");
%>  
</body>
</html>