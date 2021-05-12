<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%-- 컨텍스트 패스 주소얻기 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!--   ##########################로그인 박스###################################################################### -->
<jsp:include page="login.jsp"/>
<!--   ##########################로그인 박스 끝###################################################################### -->

<div>
		<%-- 검색부분 넣기 --%>
	<div>
		
	
	
	</div>
	
		<%-- 로그인 부분 --%>
	<div> 
		<ul>
			<c:choose>
				<c:when test="${memberId ==null}">
					<li>
						<a class="loginBtn">로그인 |</a>
					</li>
					<li>
						<a href="${contextPath}/member/joinPage.do">회원가입</a>
					</li>
				</c:when>
				<c:when test="${memberId != null}">
					<li>
						<b>${memberId}님</b>이 로그인
					</li>
				</c:when>
			</c:choose>
		</ul>
	</div>
	
</div>






