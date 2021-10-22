<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="study.bean.StudyDAO" %>
<h1>loginPro.jsp</h1>

<jsp:useBean class="study.bean.StudyDTO" id="dto" />
<jsp:setProperty property="*" name="dto"/>

<%
	StudyDAO dao = new StudyDAO();
	boolean result = dao.loginCheck(dto);
	if(result == true){
		session.setAttribute("id", dto.getId());
		response.sendRedirect("main.jsp");
	}else{%>
		<script>
			alert("아이디/비밀번호를 확인하세요");
			history.go(-1);
		</script>	
  <%}%>









