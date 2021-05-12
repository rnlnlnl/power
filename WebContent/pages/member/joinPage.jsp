<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- JSTL의 CORE라이브러리에 속한 태그들을 사용 하기 위해 링크 작성 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- 컨텍스트 패스 주소 정보 얻기 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<div>
	<h1>GI에 어서오십시오.</h1>
	
	<h5>회원가입시 유의 사항</h5>
	
	<div>
		*게임상에서의 사기 행위에 대해서는 저희가 책임을 드릴수는 없습니다.
		<br>
		<h3>그럼 즐거운 쇼핑 되십시오.</h3>	
	</div>
	<br><br>
	<h2><a href="${contextPath}/member/joinForm.do">회원가입</a></h2>
	
</div>


















