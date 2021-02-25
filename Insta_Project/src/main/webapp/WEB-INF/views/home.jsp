<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/home.jsp</title>
<jsp:include page="include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="include/navbar.jsp"></jsp:include>
	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${pageContext.request.contextPath }/resources/images/main_cook4.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>음식 사진 1</h5>
					<p>음식 소개 내용 블라 블라 블블라....</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath }/resources/images/main_cook5.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>음식 사진 2</h5>
					<p>음식 소개 내용 블라 블라 블블라....</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath }/resources/images/main_cook6.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>음식 사진 3</h5>
					<p>음식 소개 내용 블라 블라 블블라....</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleCaptions"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<div class="container">
	<h1>인덱스 페이지 입니다.</h1>
	<ul>
		<li><a href="users/signup_form.do">회원가입</a></li>
		<li><a href="cafe/private/insertform.do">카페 글쓰러 가기</a></li>
		<li><a href="file/private/uploadform.do">파일 업로드 하러 가기</a></li>
	</ul>
</div>
</body>
</html>