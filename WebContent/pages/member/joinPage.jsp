<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- JSTL의 CORE라이브러리에 속한 태그들을 사용 하기 위해 링크 작성 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%-- 컨텍스트 패스 주소 정보 얻기 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<script type="text/javascript">
	//로그인 하기
	$("#loginSub").click(function(){
		
		var id = $("#id").val();
		var pw = $("#pw").val();
		$.ajax({
			type : "post",
			url : "${}"
			
			
			
		})
	})
	
	
	
	
	
</script>





<div>
	<h1>GI에 어서오십시오.</h1>
	
	<h5>회원가입시 유의 사항</h5>
	
	<div>
		*게임상에서의 사기 행위에 대해서는 저희가 책임을 질수 없습니다.
		<br>
		<h3>그럼 즐거운 쇼핑 되십시오.</h3>	
	</div>
	<br><br>
	<!-- 따로 주소 넣어 줘야함 -->
	<form action="" method="post">
		<div class="form-group">
		<label>아이디</label>
		<input type="text" name="id" id="id" class="form-control" placeholder="아이디"><br>
		
		<label>비밀번호</label>
		<input type="password" name="pw" id="pw" class="form-control" placeholder="비밀번호"><br><br>
		
		<button type="button" id="loginSub" class="loginSubTrue">로그인</button>
		</div>
	</form>
	<button><a href="${contextPath}/member/joinForm.do">회원가입</a></button>
	
</div>


















