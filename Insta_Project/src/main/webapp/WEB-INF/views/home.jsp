<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/home.jsp</title>
<jsp:include page="include/resource.jsp"></jsp:include>
<style>
	footer{
		width: 100%;
		height: 150px;
		margin-top: 30px;
		background-color: #4F1C1C;
	}
	#footer_box{
		width: 1140px;
		height: 150px;
		margin: 0 auto;
	}
	#footer_name{
		margin: 45px 0 0 30px;
		color: #ffffff;
	}
	#address{
		margin: 45px 0 0 30px;
		color: #ffffff;
	}
	ul{
   list-style:none;
   padding-left:0px;
   }
   .carousel-inner > .item > img {
      top: 0;
      left: 0;
      min-width: 100%;
      min-height: 300px;
    } 
</style>
</head>
<body>
<jsp:include page="include/navbar.jsp"></jsp:include>
	<div class="container">
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
					<img
						src="${pageContext.request.contextPath }/resources/images/main_cook4.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>음식 사진 1</h5>
						<p>음식 소개 내용 블라 블라 블블라....</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath }/resources/images/main_cook5.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>음식 사진 2</h5>
						<p>음식 소개 내용 블라 블라 블블라....</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath }/resources/images/main_cook6.jpg"
						class="d-block w-100" alt="...">
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
	</div>
	<div class="container">
		<div class="jumbotron">
			<h1 class="display-4">안녕하세요.</h1>
			<h1 class="display-4">식소담 입니다.</h1>
			<p class="lead">메인 홈페이지 소개 글 작성 필요!</p>
			<hr class="my-4">
			<p>회원 가입을 하시면 더욱 많은 서비스를 제공 받으실수 있습니다.</p>
			<a class="btn btn-secondary btn-md" href="users/signup_form.do"
				role="button">회원가입 하러가기</a> <a class="btn btn-secondary btn-md"
				href="cafe/private/insertform.do" role="button">카페 글쓰러 가기</a> <a
				class="btn btn-secondary btn-md" href="file/private/uploadform.do"
				role="button">파일 업로드 하러 가기</a>
		</div>
	</div>
	<footer>
		<div id="footer_box">
			<div id="footer_name" style="float: left">
				<img style="width: 80px; height: 80px"
					src="${pageContext.request.contextPath }/resources/images/MK_001.png" />
			</div>
			<div id="address" style="float: right">
				<ul>
					<li>서울시 구라구 해골동 1234 우:123-1234</li>
					<li>TEL:031-123-1234 Email: email@domain.com</li>
					<li>COPYRIGHT (C) MK Company ALL RIGHTS RESERVED</li>
				</ul>
			</div>
		</div>
	</footer>
</body>
</html>