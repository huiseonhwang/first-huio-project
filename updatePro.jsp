<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="study.bean.StudyDAO" %>
<h1>updatePro.jsp</h1>

<% request.setCharacterEncoding("UTF-8"); %>    
<jsp:useBean class="study.bean.StudyDTO" id="dto" />
<jsp:setProperty property="*" name="dto"/>
<%
	StudyDAO dao = new StudyDAO();
	int result = dao.studyUpdate(dto);
	if(result == 1){%>		
		<script>
			alert("수정 되었습니다..");
			window.location='main.jsp';
		</script>
	<%}else{ %>
		<script>
			alert("잘못된 입력이 있습니다. 확인하세요..");
			history.go(-1);
		</script>
	<%}%>











