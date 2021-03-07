<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/gallery/private/upload_form.jsp</title>
<jsp:include page="../../../include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../../include/navbar.jsp">
	<jsp:param value="file" name="thisPage"/>
</jsp:include>
<div class="container">
	<h2>이미지 업로드</h2>
	<form action="upload.do" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="caption">설명</label>
			<input class="form-control" type="text" name="caption" id="caption"/>
		</div>
		<div class="form-group">
			<label for="image">이미지</label>
			<input class="form-control-file" type="file" name="image" id="image"
				accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
		</div>
		<button class="btn btn-dark" type="submit">업로드</button>
	</form>
</div>
</body>
</html>