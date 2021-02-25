<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/pwd_updateform.jsp</title>
<jsp:include page="../../include/resource.jsp"></jsp:include>
<style>
	.container {
		padding-right: 15px;
		padding-left: 15px;
		margin-right: auto;
		margin-left: auto;
		margin-bottom: 80px;
	}

	@media ( min-width : 768px) {
		.container {
			width: 500px;
		}
	}

	@media ( min-width : 992px) {
		.container {
			width: 500px;
		}
	}

	@media ( min-width : 1200px) {
		.container {
			width: 500px;
		}
	}
</style>
</head>
<body>
<div class="container">
	<h2>비밀번호 수정</h2>
	<br />
	<form action="pwd_update.do" method="post" id="myForm">
		<div class="form-group">
			<label for="pwd">기존 비밀번호</label>
			<input type="password" class="form-control" name="pwd" id="pwd"/>
		</div>
		<div class="form-group">
			<label for="newPwd">새 비밀번호</label>
			<input type="password" class="form-control" name="newPwd" id="newPwd"/>
		</div>
		<div class="form-group">
			<label for="newPwd2">새 비밀번호 확인</label>
			<input type="password" class="form-control" id="newPwd2"/>
		</div>
		<button class="btn btn-success btn-sm" type="submit">수정하기</button>
		<button class="btn btn-danger btn-sm" type="reset">리셋</button>
	</form>
</div>
<script>
	//폼에 submit 이벤트가 일어났을때 실행할 함수를 등록하고 
	document.querySelector("#myForm")
	.addEventListener("submit", function(event){
		let pwd1=document.querySelector("#newPwd").value;
		let pwd2=document.querySelector("#newPwd2").value;
		//새 비밀번호와 비밀번호 확인이 일치하지 않으면 폼 전송을 막는다.
		if(pwd1 != pwd2){
			alert("비밀번호를 확인 하세요!");
			event.preventDefault();//폼 전송 막기 
		}
	});
</script>
</body>
</html>
