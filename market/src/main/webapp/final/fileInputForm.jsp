<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>>E-Preflea Market 상품 이미지 업로드</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="width:500px; margin : 0 auto;">
<div class="w3-card-4">
  <div class="w3-container w3-pale-red w3-text-white">
    <h2>파일 업로드</h2>
  </div>
<form class="w3-container" action="process.jsp" method="post" enctype="multipart/form-data">
   <p>
   <label class="w3-text-red" for=""> <b> 상품ID </b></label>
   <input class="w3-input w3-border w3-light-gray" type="text" name="productId" /> </p>
   <p>
   <label class="w3-text-red" for=""> <b> 상품명 </b></label>
   <input class="w3-input w3-border w3-light-gray" type="text" name="pName" /> </p>
   <p>
   <label class="w3-text-red"> <b> 파일 </b></label>
   <input class="w3-input w3-border w3-light-gray" type="file" name="fileName" /> </p>
   <button class="w3-btn w3-pale-red w3-text-white"  type="submit" value="확인">확인</button>
   <button class="w3-btn w3-pale-red w3-text-white" type="reset" value="취소">취소</button>
</form>
</div>
</body>
</html>