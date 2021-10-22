<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="study.bean.StudyDAO" %>
<h1>confirmId.jsp</h1>
<jsp:useBean class="study.bean.StudyDTO" id="dto" />
<jsp:setProperty property="id" name="dto"/>

<%
	StudyDAO dao = new StudyDAO();
	boolean result = dao.idCheck(dto);
	String str = "사용가능";
	if(result == true){
		str = "사용 불가능";
%>		<h2><jsp:getProperty property="id" name="dto" /> 사용중인 아이디 입니다.</h2>
<%}else{ %>
		<h2><jsp:getProperty property="id" name="dto" /> 사용가능 합니다.</h2>
<%} %>
	<script>
		function returnClose(){
			opener.document.getElementById("idCheck").innerHTML = "<font color=red><%=str%></font>";
			self.close();
		}
	</script> 

	<input type="button" value="닫기" onclick="returnClose();" />
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	