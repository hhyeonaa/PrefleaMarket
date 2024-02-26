<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.donga.*" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<link rel="stylesheet" href="../css/w3.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<jsp:useBean id ="oi" class="edu.donga.ProductRepository2" scope="session"></jsp:useBean>
<jsp:useBean id ="vo" class="edu.donga.Product" scope="request"> </jsp:useBean>
<jsp:setProperty name="vo" property="*" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FLEA-MARKET</title>
<style>
  header{text-align: center;
     background-color : rgba(255, 99, 71, 0.5);
     color: white;
     }
  body{width:950px; margin : 0 auto;}
   a { text-decoration : none;
     color: white;
     }
   li {list-style : none;
     }
   .w3-left, .w3-right, .w3-badge {cursor:pointer} 
   .w3-badge {height:13px;width:13px;padding:0}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
	ArrayList<Product> products= oi.getAllProducts();
    request.setAttribute("products", products);
%>

<c:set var="i" value="-1"></c:set>
<c:forEach var="vo" items="${products}" >
<div class="w3-row">
<p class="w3-col s3 w3-center">
<img src="../images/${vo.fileName}" style="width:70%;"></p>
<div class="w3-col s6">
<h3 style="color:red;">상품명 : ${vo.pName}</h3>
<p style="color:gray;">상품ID : ${vo.productId}</p>
<p style="color:gray;">판매자 : ${vo.seller} </p>
<p style="color:gray;">가격 : ${vo.price}</p>
<p style="color:pale-red;"> ${vo.category} | ${vo.fleaCategory} </p>
<br><br><br>
</div>

<div class="w3-col s3"><a href="delete2.jsp?id=${i=i+1}"> <button class="w3-btn w3-pale-red w3-text-white"> 상품삭제</button></a></div>
<div class="w3-col s3"><a href="productEdit2.jsp"> <button  class="w3-btn w3-pale-red w3-text-white">상품수정</button></a> </div> <br>
<br>
</c:forEach>
</div>

<hr>
<a href="addProduct2.jsp"> <button class="w3-btn w3-pale-red w3-text-white">상품등록</button></a>
 <br>
 <br>
 <br>
  <div class="bgm"  class="w3-container w3-cell">
  <div id="aside-list-1"  >
  	<audio autoplay="True" controls="True" >
		<source src="../media/bgm.mp3"></source>
    </audio>
  </div>
  </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>