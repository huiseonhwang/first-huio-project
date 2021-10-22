<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="study.bean.StudyDAO" %>
<%@ page import="study.bean.StudyDTO" %>
<h1>udpateForm.jsp</h1>
<%
	String id = (String)session.getAttribute("id");
	if(id == null){
%>		<script>
			alert("로그인후 사용가능합니다. ");
			window.location="loginForm.jsp";
		</script>
<%	}else{
		StudyDAO dao = new StudyDAO();
		StudyDTO dto = dao.getUserInfo(id);
%>
<form action="updatePro.jsp" method="post">
	id : <%=id%> 
		<input type="hidden" name="id" value="<%=id%>" /> <br />
		<input type="hidden" name="msg" value="hello" />
	pw : <input type="password"       name="pw" value="<%=dto.getPw()%>" /> <br />
	name : <input type="text"         name="name" value="<%=dto.getName()%>"/> <br />
	age : <input type="text"          name="age" value="<%=dto.getAge()%>"/> <br />
	가입날짜 : <%=dto.getReg() %> <br />
		 <input type="submit" value="정보 수정" /> 
</form>
	<%}%>





