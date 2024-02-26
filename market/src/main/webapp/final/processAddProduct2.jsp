<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.util.*" %>
<%@ page import="edu.donga.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="../css/w3.css" />
<jsp:useBean id="oi" class="edu.donga.ProductRepository2" scope="session"></jsp:useBean>
<jsp:useBean id="vo" class="edu.donga.Product" scope="request"></jsp:useBean>
<jsp:setProperty name="vo" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Preflea Flea-Market 상품 등록</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<% MultipartRequest m = new MultipartRequest(request, "C:/webWarkspace/warkspace/report/WebContent/images", 7*1024*1024, "UTF-8",
      new DefaultFileRenamePolicy());
		Enumeration files = m.getFileNames();
		String fname = (String) files.nextElement();
		String filename = m.getFilesystemName(fname);
		vo.setFileName("fileName");
		vo.setpName(m.getParameter("pName"));
		vo.setCategory(m.getParameter("category"));
		vo.setSeller(m.getParameter("seller"));
		vo.setFleaCategory(m.getParameter("fleaCategory"));
		vo.setProductId(m.getParameter("productId"));
		vo.setPrice(Integer.parseInt(m.getParameter("price")));
		oi.addProduct(vo);
		response.sendRedirect("fleaProductsList.jsp");
		%>
<a href="addProduct2.jsp"> <button>상품등록</button></a>
</body>
</html>