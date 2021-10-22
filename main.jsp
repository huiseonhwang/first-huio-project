<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>main.jsp</h1>

<%
	String id = (String)session.getAttribute("id");
	if(id == null){%>
		<a href="loginForm.jsp" >로그인</a>
		<a href="inputForm.jsp" >회원가입</a>
		<a href="/Webb/studyBoard/list.jsp">게시판</a>
  <%}else{%>
		<h2> [<%=id%>] 님.</h2>
		<input type="button" value="로그아웃" onclick=" window.location='logout.jsp' " />
		<input type="button" value="정보수정" onclick=" window.location='updateForm.jsp' " />
		<input type="button" value="탈퇴"    onclick=" window.location='deleteForm.jsp' " />
  		<input type="button" value="게시판" onclick="window.location='/Webb/studyBoard/list.jsp'"/>
  <%}%>