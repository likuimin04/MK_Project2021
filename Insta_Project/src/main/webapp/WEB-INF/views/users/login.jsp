<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login.jsp</title>
<jsp:include page="../include/resource.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<c:choose>
			<c:when test="${requestScope.isValid}">
				<div class="alert alert-success" role="alert">
					<h2 class="alert-heading">
						<strong>알림</strong>
					</h2>
					<p>
						<strong>${sessionScope.id}</strong> 님<br />로그인 되었습니다.
					</p>
					<hr>
					<p class="mb-0">
						<a href="${requestScope.url}" class="alert-link">홈으로</a>
					</p>
				</div>
			</c:when>
			<c:otherwise>
				<div class="alert alert-danger" role="alert">
					<h2 class="alert-heading">
						<strong>알림</strong>
					</h2>
					<p>
						가입하지 않은 <strong>아이디</strong> 거나, 
						<br />잘못된 <strong>비밀번호</strong>입니다. 
						<br /><strong>재확인</strong> 및 <strong>재시도</strong> 부탁드리겠습니다.
					</p>
					<hr>
					<p class="mb-0">
						<a href="loginform.do?url=${encodedUrl}" class="alert-link">다시
							시도</a>
					</p>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>