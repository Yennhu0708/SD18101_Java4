<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab3_Bai2</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<div class="card">
			<div class="card-header bg-info">Thông Tin Nhân Viên</div>
			<div class="card-body">
				<form method="Post" >
					<div class="form-group mb-3">
						<label for="fullname" class="mb-2 fw-bolder">Tên đăng
							nhập: </label> 
							<em class="text-danger">${bean.fullname}</em>
					</div>
					<div class="form-group mb-3">
						<label for="birthday" class="mb-2 fw-bolder">Sinh Nhật: </label> 
						<em class="text-danger">${bean.fullname}</em>
					</div>
					<div class="form-group mb-3">
						<label for="gender" class="mb-2 fw-bolder">Giới tính: </label>
						 <em class="text-danger">${bean.gender ? 'Nam' : 'Nữ'}</em>
					</div>
					<div class="form-group mb-3">
					<label for="married"  class="mb-2 fw-bolder">&nbsp;Tình Trạng Hôn Nhân:</label>
							 <em class="text-danger">${bean.married}</em>
					</div>
					<div class="form-group mb-3">
						<label for="toc" class="mb-2 fw-bolder">Quốc tịch: </label>&nbsp;&nbsp;
						 <em class="text-danger">${bean.country}</em>
					</div>
					<div class="form-group mb-3">
						<label for="validationFormCheck" class="mb-2 fw-bolder">Sở Thích: </label>
						<em class="text-danger">${bean.hobbies}</em>
					</div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea1"  class="mb-2 fw-bolder">Ghi Chú: </label>
							<em class="text-danger">${bean.notes}</em>
					</div>
					<div>
						<p>Hình Ảnh</p>
						<em class="text-danger">${bean.photo}</em>
					</div>
				</form>
			</div>
		</div>
		<br> <br>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>