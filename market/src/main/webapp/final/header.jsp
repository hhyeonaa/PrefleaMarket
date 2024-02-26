<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-preflea market Header</title>
</head>
<body>
<header class="w3-margin-top w3-contaner">
   <h1>PREFLEA MARKET</h1>
   <h5>예술인과 일반인들이 모여 365일 오픈하는, 프리플마켓</h5>
<nav>
  <div class="navi">
	<ul class="w3-bar w3-pale-red">
		<li><a class="w3-bar-item w3-button" style="width : 20%" href="main.jsp">HOME</a></li>
		<li><a class="w3-bar-item w3-button" style="width : 20%" href="preProductsList.jsp">PRE-MARKET</a></li>
		<li><a class="w3-bar-item w3-button" style="width : 20%" href="fleaProductsList.jsp">FLEA MARKET</a></li>
		<li><a class="w3-bar-item w3-button" style="width : 20%" href="event.jsp">EVENT</a></li>
		<li><a class="w3-bar-item w3-button" style="width : 20%" href="index.jsp">Q&A</a></li>
	</ul>
  </div>
</nav>
<img  style="width:100%" src="${pageContext.request.contextPath}/images/main.jpg" alt="메인" />
</header>
</body>
</html>
