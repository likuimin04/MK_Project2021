<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	@import url('https://fonts.googleapis.com/css?family=Yeon+Sung:400');
	.navbar {
  		background-color: #610B0B;
  		font-family:Yeon Sung;
	}
	.btn-link{
		color: #ffffff;
	}
</style>
<nav class="navbar navbar-dark navbar-expand-sm fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/">
	  		<img style="width:35px;height:35px" src="${pageContext.request.contextPath }/resources/images/MainLogo_001.png"/>
	  	</a>
		<button class="navbar-toggler" data-toggle="collapse" data-target="#topNav">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="topNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item ${param.thisPage eq 'cafe' ? 'active':'' }">
					<a class="nav-link" href="${pageContext.request.contextPath }/main/cafe/list.do">카페</a>
				</li>
				<li class="nav-item ${param.thisPage eq 'file' ? 'active':'' }">
					<a class="nav-link" href="${pageContext.request.contextPath }/main/file/list.do">파일</a>
				</li>
				<li class="nav-item ${param.thisPage eq 'gallery' ? 'active':'' }">
					<a class="nav-link" href="${pageContext.request.contextPath }/main/gallery/list.do">겔러리</a>
				</li>
			</ul>
			<c:choose>
				<c:when test="${empty sessionScope.id }">
					<a class="btn btn-link btn-sm"
					href="${pageContext.request.contextPath }/users/loginform.do">로그인</a>
					<a class="btn btn-link btn-sm ml-1" 
					href="${pageContext.request.contextPath }/users/signup_form.do">회원가입</a>
				</c:when>
				<c:otherwise>
					<span class="navbar-text">
						<a href="${pageContext.request.contextPath }/users/private/info.do">${id}</a>
						<a class="btn btn-link btn-sm" 
						href="${pageContext.request.contextPath }/users/logout.do">로그아웃</a>
					</span>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>
