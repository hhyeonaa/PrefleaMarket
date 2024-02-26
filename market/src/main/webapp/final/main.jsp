<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Preflea Market</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css" />
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
<h1> 1916872 강현아 </h1>
<div class="w3-cell-row">
<section class="w3-left w3-container w3-margin-top w3-margin-bottom" style="max-width:700px" >
<div class="w3-row">
	<article class="pre" class="w3-row w3-margin-top"><h2 class="w3-text-red w3-large">PRE-MARKET</h2></article>
	    <h6 class="w3-text-gray">프리마켓은 예술인 프리더(Preder)들이 자유롭게 꿈을 펼치는 공간입니다. <br>
	        소상공인들의 온라인 플랫폼을 응원하여 드립니다. </h6>
		<a href="preProductsList.jsp"><img class="w3-col s3 w3-border w3-margin" src="${pageContext.request.contextPath}/images/pre1.jpg" alt="식자재" />
		<img class="w3-col s3 w3-border w3-margin" src="${pageContext.request.contextPath}/images/pre2.jpg" alt="문구" />
		<img class="w3-col s3 w3-border w3-margin" src="${pageContext.request.contextPath}/images/pre3.jpg" alt="인형" />
    <br>
	    <img class="w3-col s3 w3-border w3-margin" src="${pageContext.request.contextPath}/images/pre4.jpg" alt="캠핑용" />
		<img class="w3-col s3 w3-border w3-margin" src="${pageContext.request.contextPath}/images/pre5.jpg" alt="디저트" />
		<img class="w3-col s3 w3-border w3-margin" src="${pageContext.request.contextPath}/images/pre6.jpg" alt="석고방향제" /></a>
    <br>
</div>
<hr />
<div class="w3-row">
	<article class="plea" class="w3-row w3-margin-top"><h2 class="w3-text-red w3-large">FLEA MARKET</h2></article>
	    <h6 class="w3-text-gray">플리마켓은 '벼룩시장'으로 프리플마켓의 이웃들 간 사랑을 나누는 곳입니다.</h6>
		<a href="fleaProductsList.jsp"><img class="w3-col s3 w3-border w3-margin" src="${pageContext.request.contextPath}/images/flea1.jpg" alt="접시" />
		<img class="w3-col s3 w3-border w3-margin" src="${pageContext.request.contextPath}/images/flea2.jpg" alt="여성옷" />
		<img class="w3-col s3 w3-border w3-margin" src="${pageContext.request.contextPath}/images/flea3.jpg" alt="도자기&마그넷" /></a>
	<br>
</div>
</section>


<aside class="right" class="w3-container w3-cell" >
 <div class="login"  >
 <% String id = (String)session.getAttribute("Id"); 
  if (id==null) { %>
<form action="sessionLogin.jsp" method="post">
    <h4 class="w3-text-red"><b>LOG IN</b></h4>
    <form action="#" >
    <b class="w3-text-red">ID</b><br>
    <input class="w3-input1" type="text" name="id"/><br>
    <b class="w3-text-red">PASSWORD</b><br>
    <input class="w3-input1" type="password" name="pw"><br>
    <br>
    <button class="w3-btn w3-pale-red w3-text-white" type="reset">취소</button>
    <button class="w3-btn w3-pale-red w3-text-white" type="submit">로그인</button> <br /> 
    <a class="w3-text-gray" href="./form.jsp" target="_blank" id="register">회원가입</a>
    <a class="w3-text-gray" href="#" id="forgot">비밀번호찾기</a>
    </form>
</form class="w3-text-gray">
<% } else {
	out.print(id + "님 환영합니다.");
	%>
	<a href="sessionLogout.jsp"><button class="w3-btn w3-pale-red w3-text-white">로그아웃</button></a>
<%
}
%>
 </div>
 
 <br>
  <div class="bgm"  class="w3-container w3-cell">
  <div id="aside-list-1"  >
  	<audio autoplay="True" controls="True" >
		<source src="${pageContext.request.contextPath}/media/bgm.mp3"></source>
    </audio>
  </div>
  </div>
</aside>
	
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>