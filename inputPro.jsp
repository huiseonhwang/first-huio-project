<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="study.bean.StudyDAO" %>
<% request.setCharacterEncoding("UTF-8"); %>    
<jsp:useBean class="study.bean.StudyDTO" id="dto" />
<jsp:setProperty property="*" name="dto"/>
<%
	StudyDAO dao = new StudyDAO();
	int result = dao.studyInsert(dto);
	if(result == 1){
%>		<script>
			alert("가입되었습니다..");
			window.location='loginForm.jsp';
		</script>
  <%}else{ %>
  		<script>
			alert("잘못된 입력이 있습니다. 확인하세요..");
			history.go(-1);
		</script>
  <%}%>
		
		
		
		
		
		
		
		