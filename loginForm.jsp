<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>loginForm.jsp</h1>

<script>
	function check(){
		idv = document.getElementsByName("id")[0].value;
		pwv = document.getElementsByName("pw")[0].value;
		if(idv == ""){
			alert("아이디를 입력하세요~");
			return false;	
		}
		if(pwv == ""){
			alert("비밀번호를 입력하세요~");
			return false;	
		}
	}
</script>

<form action="loginPro.jsp" method="post" onsubmit="return check();">
	id : <input type="text" name="id" /> <br />
	pw : <input type="password" name="pw" /> <br />
		 <input type="submit" value="로그인" /> <br />
</form>

<input type="button" value="가입" onclick=" window.location='inputForm.jsp' " />
