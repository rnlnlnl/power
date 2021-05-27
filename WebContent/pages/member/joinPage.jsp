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

<style>
	#div1{width:300px; margin:10px;}
	#div1{
		height: 100px;
		overflow: auto;
		border: 1px solid black;
		padding: 10px;
	}
</style>

<!-- 광고 약관동의 한후 회원가입 페이지로 넘어가게 하기 -->
<script type="text/javascript">
	
	
	
	function joing() {
		if ($('input:radio[id=noSee]').is(':checked')) {
			$('#join').hide();
		}else{
			$('#join').show();
		}
	}
	
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
	<label>약관동의</label>
	<div id="div1">
		<section>
			<p>
				<b>광고 수신에 동의 하십니까.</b>
				Google Ads 및 지역 서비스 광고를 통해 계속 광고를 게재하려면 업데이트된 약관에 동의해야 합니다.
				이용약관에 동의하지 않는 경우 동의할 때까지 캠페인이 일시중지될 수 있습니다.
				Google Ads 및 지역 서비스 광고를 계속 게재하려면 최대한 빨리 약관을 검토하고 수락하시기 바랍니다.
				새 이용약관의 검토 및 동의는 45일 내에 완료해야 합니다.
				새 이용약관에 동의하지 않을 경우 더 이상 광고를 게재할 수 없으며 계정을 해지해야 합니다.
				계정을 해지하려면 지원팀에 문의하세요.
			</p>
		</section>
	</div>
	<label>동의합니다.</label>
	<input type="radio" name="Advertising" id="see" onchange="joing()">
	<label>동의하지않습니다.</label>
	<input type="radio" name="Advertising" id="noSee" checked="checked" onchange="joing()"><br>
	
	<button id="join" hidden=""><a href="${contextPath}/member/joinForm.do">회원가입</a></button>
	
</div>


















