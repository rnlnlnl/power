<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sunm.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%-- 컨택스트 패스 주소 얻기 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
	$("#loginSub").click(function () {
		
		var id = $("#id").val();
		var pw = $("#pw").val();
		$.ajax({
			type : "post",
			uri : "${contextPath}/member/login.do", //java 의 member페키지로 가서 login.do가 적힌곳으로 가서 실행을 한다
			data : ({
				id : id,
				pw : pw
			}),
			dataType : "text",
			success : function(result) {
				if (result == -1) {// 아이디가 등록 되어있지 않을때
					alert("존재하지 않는 정보입니다.");
				}else if(result == 1){// 로그인 정보가 모두 일치할시
					alert(id+"님 환영합니다.");
					location.href='loginPass.do';
				}
			}
		})
	})
	
</script>

<!-- ###################로그인 창 #######################-->
<!-- 난중에 이미지로 대체 -->
<h1>GI 거래소</h1>
<form>
	<label>아이디</label>
	<input type="text" name="id" id="id" placeholder="아이디를 입력하세요."><br>
	<label>비밀번호</label>
	<input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요."><br>
	<button type="button" id="loginSub"><b>로그인</b></button>
</form>













