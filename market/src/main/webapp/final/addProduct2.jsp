<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.util.*" %>
<%@ page import="edu.donga.*" %>
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
</head>
<body style="width:500px; margin : 0 auto;">
<div class="w3-card-4">
  <div class="w3-container w3-pale-red w3-text-white">
    <h2>Flea-Market 상품 등록하기</h2>
  </div >
<form class="w3-container" action="processAddProduct2.jsp" method="post" enctype="multipart/form-data">
   <p>
   <label class="w3-text-red" for=""> <b> 상품ID </b></label>
   <input class="w3-input w3-border w3-light-gray" type="text" name="productId" /> </p>
   <p>
   <label class="w3-text-red" for=""> <b> 상품명 </b></label>
   <input class="w3-input w3-border w3-light-gray" type="text" name="pName" /> </p>
   <p>
   <label class="w3-text-red" for=""> <b> 이미지파일 </b></label>
   <input class="w3-input w3-border w3-light-gray" type="file" name="fileName" /> </p>
   <p>
   <label class="w3-text-red" for=""> <b> 판매자 </b></label>
   <input class="w3-input w3-border w3-light-gray" type="text" name="seller" /> </p>
   <p>
   <label class="w3-text-red" for=""> <b> 가격 </b></label>
   <input class="w3-input w3-border w3-light-gray" type="text" name="price" /> </p>
   <p>
   <label class="w3-text-red" for=""> <b> 상품 분류 </b></label>
   <input class="w3-input w3-border w3-light-gray" type="text" name="category" /> </p>
   <p>
   <label class="w3-text-red"> <b> 마켓 분류 </b></label> <br>
   <input type="radio" name="preCategory" value="프리마켓" /> Pre-Market(프리마켓)
   <input type="radio" name="fleaCategory" value="플리마켓" /> Flea-Market(플리마켓)
   </p>
      <br>
    <p>   
   <button class="w3-btn w3-pale-red w3-text-white"  type="submit" value="등록">등록</button>
   <a href="fleaProductsList.jsp"><button class="w3-btn w3-pale-red w3-text-white" type="reset" value="등록 취소">등록 취소</button></a>
</form>
</div>
</body>
</html>