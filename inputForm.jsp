<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>inputForm.jsp</h1>
<script>
	function confirm(){
		value = document.getElementsByName("id")[0].value;
		open('confirmId.jsp?id='+value,'confirm','width=500,height=500');
	}
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
<form action="inputPro.jsp" method="get" onsubmit="return check();" >
	id : <input type="text" name="id" id="ids"/> 
		 <input type="button" value="id중복확인" onclick="confirm();" /> <label id="idCheck"></label>  <br />
	pw : <input type="password" name="pw" /> <br />
	name : <input type="text"   name="name" /> <br />
	age : <input type="text"    name="age" /> <br />
		 <input type="submit" value="가입" /> 
</form>


