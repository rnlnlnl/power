<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- JSTL의 CORE라이브러리에 속한 태그들을 사용 하기 위해 링크 작성 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 컨텍스트패스 주소얻기 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<script type="text/javascript">






</script>

<form action="${contextPath}member/addMember.do" method="post" id="joinform" name="fr">
	<section>
		<label for="id">아이디</label>
		<input type="text" name="id" id="id" class="boxSize" onblur="checkId();" required>
		<br>
		<label for="pw">비밀번호</label>
		<input type="password" name="pw" id="pw" class="boxSize" onblur="checkPw();" required>
		<br>
		<label for="pw2">비밀번호 재확인</label>
		<input type="password" name="pw2" id="pw2" class="boxSize" onblur="" required>
		<br>
		<label for="name">이름</label>
		<input type="text" name="name" id="name" class="boxSize" required>
		<br>
		<label for="nickName">닉네임</label>
		<input type="text" name="nickName" id="nickName" class="boxSize" required>
		<br>
		<label for="email">이메일</label>
		<%-- API사용 --%>
		<br>
		<label for="add">주소</label>
		<%--API사용 --%>
		
	</section>







</form>










