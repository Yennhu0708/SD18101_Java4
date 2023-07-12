<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab2_Bai2</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container mt-3">
		<form>
			<div class="card text-dark mb-3">
				<div class=" card-header bg-info text-center ">Thông Tin Đăng Ký</div>
				<div class="card-body">
					<div class="mb-3">
						<label for="exampleInputUser" class="form-label text-info fw-bolder">Tên Đăng
							Nhập</label> <span>${username}</span>
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label text-info fw-bolder">Password</label>
						<span>${password}</span>
					</div>
					<div class="mb-3">
						<label class="form-label text-info fw-bolder">Giới Tính: </label>
						<span>${gender}</span>
					</div>
					<div class="mb-3">
						<label class="form-label text-info fw-bolder">Tình Trạng Hôn Nhân: </label>
						<span>${married}</span>
					</div>
					<div class="mb-3">
						<label class="form-label text-info fw-bolder">Quốc Tịch: </label> <span>${country}</span>
					</div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label text-info fw-bolder">Sở Thích</label>
						<span>${hobbies}</span>
					</div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label text-info fw-bolder">Ghi Chú</label>
						<span>${notes}</span>
					</div>
				</div>
			</div>
		</form>
	</div> 
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>