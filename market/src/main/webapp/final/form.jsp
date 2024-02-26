<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Preflea Market 회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="width:500px; margin : 0 auto;">
<div class="w3-card-4">
  <div class="w3-container w3-pale-red w3-text-white">
    <h2>회원가입</h2>
  </div>
  <form class="w3-container" action="main.jsp" method="get">
    <p>      
    <label class="w3-text-red"><b>ID</b></label>
    <input class="w3-input w3-border w3-light-gray" name="id" type="text"></p>
    <p>      
    <label class="w3-text-red"><b>PASSWORD</b></label>
    <input class="w3-input w3-border w3-light-gray" name="password" type="password"></p>
    <p>      
    <br>
    <label class="w3-text-red"><b>이름</b></label>
    <input class="w3-input w3-border w3-light-gray" name="name" type="text"></p>
    <p>      
    <label class="w3-text-red"><b>전화번호</b></label>
    <input class="w3-input w3-border w3-light-gray" name="phone" type="text"></p>
    <p>      
    <label class="w3-text-red"><b>주소</b></label>
    <input class="w3-input w3-border w3-light-gray" name="address" type="text"></p>
    <p>      
    <label class="w3-text-red"><b>성별</b></label> <br>
    <input type="radio" name="gender" value="female" /> 여자
    <input type="radio" name="gender" value="male" /> 남자</p>
    <p>      
    <label class="w3-text-red"><b>관심분야</b></label> <br>
    <input type="checkbox" name="interest" value="의류" /> 의류
    <input type="checkbox" name="interest" value="악세서리" /> 악세서리
    <input type="checkbox" name="interest" value="음식" /> 음식
    <input type="checkbox" name="interest" value="도구" /> 도구
    <input type="checkbox" name="interest" value="팬시" /> 팬시
    <input type="checkbox" name="interest" value="기타" /> 기타</p>
    <br>
    <hr>
    <br>
    <p>      
    <label class="w3-text-red"><b>별명</b></label>
    <input class="w3-input w3-border w3-light-gray" name="nickname" type="text"></p>
    <p>
    <label class="w3-text-red"><b>자기소개글을 작성해주세요.</b></label>
    <textarea class="w3-input w3-border w3-light-gray" name="comment" cols="40" rows="5"></textarea> <br> </p>
    <button class="w3-btn w3-pale-red w3-text-white"  type="submit" value="확인">확인</button>
    <button class="w3-btn w3-pale-red w3-text-white" type="reset" value="취소">취소</button>
</div>
</body>
</html>