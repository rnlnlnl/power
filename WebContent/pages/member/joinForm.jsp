<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- JSTL의 CORE라이브러리에 속한 태그들을 사용 하기 위해 링크 작성 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 컨텍스트패스 주소얻기 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<style>
 
	#div1{width:500px; margin:10px;}
	#div1{
		height: 100px;
		overflow: auto;
		border: 1px solid black;
		padding: 10px;
	}
	
</style>




<script type="text/javascript">
	
	function pwpw2Check() {
		var i;

	}
	
	
	
	
	
	
	
	
	
	function joinFormCheck() {
		var pw = document.getElementById("pw");
		var name = document.getElementById("name");
		var nick = document.getElementById("nickName");
		var email = document.getElementById("email");
		var address = document.getElementById("address");
		var no = document.getElementById("no");
		var not = document.getElementById("not");
	
		if (pw.value.length < 8 || pw.value.length > 15) {
			alert("비밀번호는 8자이상 15자미만으로 작성하여 주십시오");
			pw.value = "";
			document.fr.pw.focus();
			return false;
		}
	
		if (name.value == "") {
			alert("이름을 입력해 주세요.");
			document.fr.name.focus();
			return false;
		}
	
		if (nick.value == "") {
			alert("마켓에서 사용할 이름을 적어주세요.");
			document.fr.nickName.focus();
			return false;
		}
		
		if (tel.value == "") {
			alert("전화번호를 적어주세요.");
			document.fr.tel.focus();
			return false;
		}
	
		if (email.value == "") {
			alert("이메일을 입력해주세요.");
			document.fr.email.focus();
			return false;
		}
	
		if (address.value == "") {
			alert("주소를 입력해주세요");
			document.fr.address.focus();
			return false;
		}
		
		if (no.checked) {
			alert("약관에 동의해주세요.");
			return false;
		}
		
		if (not.checked) {
			alert("약관에 동의해주세요.");
			return false;
		}
		
		
	}




</script>

<fieldset>
<legend class="title">회원가입</legend>
<form action="a.jsp<%-- ${contextPath}member/addMember.do --%>" method="post" id="joinform" name="fr">
	<section>
		<label for="id">아이디</label><br>
			<input type="text" name="id" id="id" class="boxSize" onblur="checkId();" required>
		<br>
		<label for="pw">비밀번호</label><br>
			<input type="password" name="pw" id="pw" class="boxSize" onblur="checkPw();" required>
		<br>
		<label for="pw2">비밀번호 재확인</label><br>
			<input type="password" name="pw2" id="pw2" class="boxSize" onblur="pwpw2Check();" required>
		<br>
		<label for="name">이름</label><br>
			<input type="text" name="name" id="name" class="boxSize" required>
		<br>
		<label for="nickName">닉네임</label><br>
			<input type="text" name="nickName" id="nickName" class="boxSize" required>
		<br>
		<label for="tel">전화번호</label><br>
			<input type="text" name="tel" id="tel" class="boxSize" onblur="" required>
		<br>
		<label for="email">이메일</label><br>
		<%-- API사용 --%>
		<br>
		<label for="add">주소</label><br>
		<%--API사용 --%>
		<br>
		<div id="div1">
		<label><b>약관동의</b></label>
			<section>
				<p>
					제 1 조 (목적)
본 이용약관(이하 '약관')은 (사)RoomDy(이하 ‘회사’라 한다)가 제공하는 서비스 (이하 ‘서비스’라 한다 도메인명 http://www.roomdy.com) 이용자와 회사간의 이용 조건 및 절차, 회사와 이용자의 권리, 의무 및 이용에 관한 제반사항과 기타 필요한 사항을 구체적으로 규정함 을 목적으로 합니다.
제 2 조 (이용약관의 효력 및 변경)
(1)본 약관은 웹사이트에서 온라인으로 공시함으로써 효력을 발생하며, 합리적인 사유가 발 생할 경우 관련법령에 위배되지 않는 범위 안에서 개정될 수 있습니다. 개정된 약관은 온 라인에서 공지함으로써 효력을 발휘하며, 이용자의 권리 또는 의무 등 중요한 규정의 개 정은 사전에 공지합니다.
(2)회사는 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 약관을 변경할 경 우에는 지체 없이 이를 사전에 공시합니다
(3)본 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 회사에서 책임지지 않 습니다.
회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
제 3 조 (약관외 준칙)
본 약관에 명시되지 아니한 사항에 대해서는 전기통신기본법, 전기통신사업법 등 기타 관계 법령 및 회사가 정한 홈페이지의 세부이용지침 등의 규정에 의합니다.
제 4 조 (용어의 정의)
(1)본 약관에서 사용하는 용어는 다음과 같습니다.
①본 약관은 웹사이트에서 온라인으로 공시함으로써 효력을 발생하며, 합리적인 사유가 발 생할 경우 관련법령에 위배되지 않는 범위 안에서 개정될 수 있습니다. 개정된 약관은 온 라인에서 공지함으로써 효력을 발휘하며, 이용자의 권리 또는 의무 등 중요한 규정의 개 정은 사전에 공지합니다.
②회사는 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 약관을 변경할 경 우에는 지체 없이 이를 사전에 공시합니다.
③본 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 회사에서 책임지지 않습니다.
④회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
(2)회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
제 5 조 (이용 계약의 성립)
(1)본 이용약관에 대한 동의는 이용신청 당시 해당 회사의 약관을 확인하시고 이용자가 '동 의함' 버튼을 누름으로써 의사표시를 합니다.
(2)이용계약은 이용고객의 본 이용약관 내용에 대한 동의와 이용신청에 대하여 회사의 이용 승낙으로 성립합니다.
제 6 조 (회원 가입 및 승낙)
(1)회원가입은 신청자가 온라인으로 회사가 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료하는 것으로 성립됩니다.
(2)회사는 다음 각 항에 해당하는 경우 그 사유가 해소될 때까지 이용계약 성립을 유보할 수 있습니다.
①서비스 관련 제반 용량이 부족한 경우
②기술상 장애 사유가 있는 경우
(3)이용신청자는 다음 사항을 준수하여야 합니다.
①가입신청 양식에는 실명을 사용해야 합니다.
②타인의 명의를 사용하여 기재하지 않아야 합니다.
③가입신청 양식의 내용은 현재의 사실과 일치해야 합니다.
④사회의 안녕과 질서, 미풍양속을 저해할 목적으로 신청해서는 안됩니다.
⑤사실과 일치하지 않거나 잘못 입력한 개인정보로 발생하는 오류에 대한 책임은 회원에게 있습니다.
⑥이용신청자가 제공한 정보가 부정확하거나 현재의 사실과 일치하지 않는 경우, 또는 그러하다고 의심할 수 있는 합리적인 이유가 있는 경우 서비스 이용을 제한할 수 있습니다.
(4)회사는 이용신청고객이 관계법령에서 규정하는 미성년자일 경우에 승낙을 보류할 수 있습니다.
제 7 조 (회원의 유형)
- 홈페이지 이용 회원유형은 다음과 같습니다.
(1)일반회원(정회원) 이라 함은 홈페이지 이용악관에 동의하고, 회원가입 절차에 의해 회원 등록한 자이며, 고객번호와 이름, 주민등록번호로 기간계 시스템의 실 서비스 이용자로 인증된 자
(2)일반회원(준회원) 이라 함은 홈페이지 이용약관에 동의하고, 회원가입 절차에 의해 회원 등록한 자
(3)기업회원(정회원) 이라 함은 홈페이지 이용악관에 동의하고, 회원가입 절차에 의해 회원 등록한 자이며, 고객번호와 기업명, 사업자번호로 기간계 시스템의 실 서비스 이용자로 인증된 자
(4)기업회원(준회원) 이라 함은 홈페이지 이용약관에 동의하고, 회원가입 절차에 의해 회원 등록한 자
				</p>
			</section>
		</div>
		<br>
			<input type="radio" name="mmm" id="ok" value="okok"><b>동의합니다.</b>
			<input type="radio" name="mmm" id="no" value="nono" checked="checked" ><b>동의하지 않습니다.</b>
		<br><br>
		<label>이메일 수신동의</label><br>
			<input type="radio" name="eee" id="yes" value="yees">동의 합니다.
			<input type="radio" name="eee" id="not" value="noot" checked="checked">동의하지 않습니다.
		<br>
		
			<input type="button" id="joinBtn" class="buttonBox" value="회원가입" onclick="joinFormCheck();">
			<input type="reset" id="setBtn" class="buttonBox" value="취소하기">
		 
		
		
		
	</section>







</form>

</fieldset>







