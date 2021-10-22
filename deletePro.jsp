<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="study.bean.StudyDAO" %>
<h1>deletePro.jsp</h1>
<jsp:useBean class="study.bean.StudyDTO" id="dto" />
<jsp:setProperty property="*" name="dto"/>
<%
	StudyDAO dao = new StudyDAO();
	int result = dao.studydelete(dto);
	if(result == 1){
		session.invalidate();  // 세션 삭제
	%>		
		<script>
			alert("탈퇴 되었습니다..");
			window.location='loginForm.jsp';
		</script>
	<%}else{ %>
		<script>
			alert("비밀번호를 확인하세요..");
			history.go(-1);
		</script>
	<%}%>
