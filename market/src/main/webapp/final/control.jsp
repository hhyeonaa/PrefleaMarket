<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  errorPage="error.jsp" import="edu.donga.*, java.util.*" %>
<!DOCTYPE HTML>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="dao" class="edu.donga.DAO" scope="application"/> 
<jsp:useBean id="vo"  class="edu.donga.GuestVO" scope="request"/>
<jsp:setProperty name="vo" property="*"/> 
<% 
	String action = request.getParameter("action");
	if(action.equals("list")) {
		ArrayList<GuestVO> datas = dao.getAllGuests();  
		request.setAttribute("datas", datas);
		pageContext.forward("list.jsp"); 
	}
	
	else if(action.equals("insert")) {	
	
	  if(dao.addGuestBook(vo)) {
		  response.sendRedirect("control.jsp?action=list");
	  } else
		  throw new Exception("입력오류");
	}
   
	else if(action.equals("edit")) {
		GuestVO aGuest = dao.getId(Integer.parseInt(request.getParameter("id")));
		request.setAttribute("vo", aGuest);
		pageContext.forward("edit.jsp");
		session.setAttribute("pwd", aGuest.getPassword());
					
	}
   
	else if(action.equals("update")) {
	    	if(vo.getPassword().equals(session.getAttribute("pwd"))){
	            int id = Integer.parseInt(request.getParameter("id"));
	    		if(dao.update(id, vo)) {
					response.sendRedirect("control.jsp?action=list");
				}
				else 
					throw new Exception("DB 갱신오류");
	    	        
	    	} else {
	  	%>
	  	<script>
	  	    alert("비밀번호가 틀립니다. 다시 입력해주세요.");
	  	    //history.go(-1);
	  	</script>
	    <%
	    	}
	}

	else if(action.equals("delete")) {
		if(dao.delete(Integer.parseInt(request.getParameter("id")))){
			response.sendRedirect("control.jsp?action=list");
		} else
		     throw new Exception("오류로 삭제 실패 되었습니다.");
	}
	
	else {
		out.println("<script>alert('action 파라미터를 확인해 주세요!')</script>");
	} 

%>
