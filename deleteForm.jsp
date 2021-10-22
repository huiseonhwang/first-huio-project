<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>deleteForm.jsp</h1>

<% String id = (String)session.getAttribute("id"); 
if(id == null){%>		
	<script>
		alert("로그인후 사용가능합니다. ");
		window.location="loginForm.jsp";
	</script>
<%}else{%>
	<form action="deletePro.jsp" method="post">
			 <input type="hidden" name="id" value="<%=id%>" />
		pw : <input type="password" name="pw"> <br />
			 <input type="submit" value="탈퇴" />
	</form>
<%}%>