<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" import="java.util.*, edu.donga.*"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3pro.css">
<title>E-Preflea Market Q&A</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/w3.css" />
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
<jsp:useBean id="datas" scope="session" class="edu.donga.DAO" />
<jsp:useBean id="vo"  class="edu.donga.GuestVO" scope="request"/>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div align="center"> 
	<div class="w3-container">
	<br>
	    <H2 class="w3-text-red"><b>Q&A LIST</b></H2><br>
	</div>
<hr>
		<form>
		<br>
    <a href="writeForm.jsp" class="w3-btn w3-pale-red"> 글쓰기 </a>
			<br><br><br><br>
			<table class="w3-table-all w3-hoverable">
				<tr class="w3-pale-red w3-text-white"> 
					<th>작성자</th> <th>이메일 </th>
				</tr>
	         <c:set var="i" value="-1"></c:set>
	          <c:forEach var="vo" items="${datas}">
	          <tr class="w3-text-gray">
	          <td class="w3-text-pale-red"><a href="control.jsp?action=edit&id=${i=i+1}">${vo.name}</a></td><td>${vo.email}</td>
	          </tr>
	          <tr class="w3-text-gray">
	          <td class="w3-text-pale-red">내용</td> <td>${vo.content}</td>
	          </tr>
	          </c:forEach>
			</table>
		</form>
	</div>
	<br><br>
<hr>
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