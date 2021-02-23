<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/updateform.jsp</title>
<jsp:include page="../../include/resource.jsp"></jsp:include>
<style>
	/* 프로필 이미지를 작은 원형으로 만든다 */
	#profileImage {
		width: 50px;
		height: 50px;
		border: 1px solid #cecece;
		border-radius: 50%;
	}
	/* 프로필 업로드 폼을 화면에 안보이게 숨긴다 */
	#profileForm {
		display: none;
	}

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
	<h2>가입정보 수정 </h2>
	<br />
	<a id="profileLink" href="javascript:">
		<c:choose>
			<c:when test="${empty dto.profile }">
				<svg id="profileImage" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
	  				<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
				</svg>
			</c:when>
			<c:otherwise>
				<img id="profileImage" 
				src="${pageContext.request.contextPath}${dto.profile}" />
			</c:otherwise>
		</c:choose>
	</a>
	<form action="update.do" method="post">
		<div class="form-group">
			<label for="id">아이디</label>
			<input type="text" class="form-control" id="id" value="${sessionScope.id }" disabled/>
		</div>
		<div class="form-group">
			<label for="email">이메일</label>
			<input type="text" class="form-control" id="email" name="email" value="${dto.email }"/>
		</div>
		<button type="submit" class="btn btn-success">수정확인</button>
		<button type="reset" class="btn btn-danger">취소</button>
	</form>
	<form action="profile_upload.do" method="post" 
		enctype="multipart/form-data" id="profileForm">
		<label for="image">프로필 이미지 선택</label>
		<input type="file" name="image" id="image" accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
		<button type="submit">업로드</button>
	</form>
</div>
<script>
	//프로필 링크를 클릭했을때 실행할 함수 등록
	$("#profileLink").on("click", function(){
		// 아이디가 image 인 요소를 강제 클릭하기
		$("#image").click();
	});
	//이미지를 선택했을때 실행할 함수 등록
	$("#image").on("change", function(){
		//폼을 강제 제출해서 선택된 이미지가 업로드 되도록 한다.
		$("#profileForm").submit();
	});
</script>
</body>
</html>