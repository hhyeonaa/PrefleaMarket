<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" import="edu.donga.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3pro.css">

<script type="text/javascript">
	function delcheck() {
		result = confirm("정말로 삭제하시겠습니까 ?");
	
		if(result == true){
			document.form1.action.value="delete";
			document.form1.submit();
		}
		else
			return;
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의글 Edit </title>
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
<jsp:useBean id="vo" scope="request" class="edu.donga.GuestVO" />
<body>
<jsp:include page="header.jsp"></jsp:include>
<div align="center">
<div class="w3-container w3-pale-red w3-text-white">
<br>
<h2>문의글 수정폼 </h2><br>
  </div>
<form name=form1 method=post action=control.jsp   class="w3-container">
<br>
<P> <a href=control.jsp?action=list class="w3-btn w3-pale-red w3-text-black">Q&A LIST</a> </P>
<br><br>
<input type=hidden name="id" value=<%=Integer.parseInt(request.getParameter("id"))%>>
<input type=hidden name="action" value="update">
<table class="w3-table w3-bordered">
  <tr class="w3-row-padding">
    <th class="w3-text-gray">비밀번호</th>
    <td class="w3-text-gray"><input class="w3-input" type="password" name="password"><br>
       글을 수정하시려면 비밀번호를 입력해주세요.</td>
  </tr>
    <tr class="w3-row-padding">
    <th class="w3-text-gray">이름</th>
    <td class="w3-text-gray"><input class="w3-input" type="text" name="name" value="${vo.name}"></td>
    </tr>
  <tr class="w3-row-padding">
    <th class="w3-text-gray">email</th>
    <td class="w3-text-gray"><input class="w3-input" type="text" name="email" value="${vo.email}"></td>
  </tr>
   <tr class="w3-row-padding">
    <th class="w3-text-gray">내용</th>
    <td>
    <textarea class="w3-input" name="content" rows="5" cols="150">
         ${vo.content}</textarea>
    </td>
  </tr> 
 
  <tr>
    <td colspan="3" align=center><input class="w3-btn w3-pale-red w3-text-white" type=submit value="수정">
    <input class="w3-btn w3-pale-red w3-text-white" type=reset value="취소">
    <input class="w3-btn w3-pale-red w3-text-white" type="button" value="글 삭제" onClick="delcheck()"></td>
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