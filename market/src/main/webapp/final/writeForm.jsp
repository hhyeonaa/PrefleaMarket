<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객 문의글 작성</title>
<jsp:setProperty name="vo" property="*"/> 
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
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:useBean id="datas" scope="session" class="edu.donga.DAO" />
<jsp:useBean id="vo"  class="edu.donga.GuestVO" scope="request"/>


<div align="center" >
  <div class="w3-container w3-pale-red w3-text-white">
	<br>
    <h2><b>문의글 작성폼</b></h2>
    <br>
  </div>
  <form class="w3-container" name=form1 method=post action="control.jsp">
<br>
<P> <a href=control.jsp?action=list class="w3-btn w3-pale-red">Q&A LIST</a> </P>
<br><br>
<input type=hidden name="action" value="insert">
<table  class="w3-table-all w3-centered" style="width:70%;">
  <tr>
    <th class="w3-text-gray">이 름</th>	
    <td><input type="text" name="name" ></td>
  </tr>
  <tr>
    <th class="w3-text-gray">email</th>
    <td><input type="email" name="email"></td>
  </tr>
   <tr>
    <th class="w3-text-gray">비밀번호</th>
    <td><input type="password" name="password"></td>
  </tr>
  <tr>
    <th class="w3-text-gray">내용</th>
    <td><textarea name="content" rows="5" colos="200"></textarea>
    </td>
  </tr>
  <tr>
   <td colspan=2 align=center>
   <input class="w3-btn w3-pale-red w3-text-white" type=submit value="완료">
   <input class="w3-btn w3-pale-red w3-text-white" type=reset value="취소"></td>
</tr>
</table>
</form>
</div>

<hr>
 <br>
 <br>
 <br>

  <div id="aside-list-1"  >
  </div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>