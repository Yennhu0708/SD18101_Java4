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
	<br>
	<br>
	<div class="container-fluid">
				<div class="card">
					<div class="card-header bg-info">FORM THÔNG TIN NHÂN VIÊN
					</div>
					<div class="card-body">
						<form action="/Nhuldypc04788_Lab3/StaffServlet" method="post" enctype="multipart/form-data">
							<div class="form-group mb-3">
								<label for="toa" class="mb-2 fw-bolder">Họ và tên: </label> <input
									type="text" name="fullname" class="form-control" id="toa"
									placeholder="Nhập tên đăng nhập">
							</div>
							<div class="form-group mb-3">
								<label for="tob" class="mb-2 fw-bolder">Ngày sinh: </label> <input
									type="date" name="birth" class="form-control" id="tob"
									placeholder="Nhập cạnh b">
							</div>
							
							<div class="form-group mb-3">
								<label for="toc" class="mb-2 fw-bolder">Giới tính: </label><br>
								<input type="radio" name="gender" id="male" value="true"><label
									for="male">&nbsp;Nam</label>&nbsp;&nbsp;&nbsp; <input
									type="radio" name="gender" id="female" value="false"><label
									for="female">&nbsp;Nữ</label>
							</div>
							<div class="form-group mb-3">
								<input type="checkbox" name="married" id="married"><label
									for="married">&nbsp;Đã có gia đình?</label>
							</div>
							<div class="form-group mb-3">
								<label for="toc" class="mb-2 fw-bolder">Quốc tịch: </label>&nbsp;&nbsp;
								<select name="country" id="country">
									<option value="VietNam">Vietnam</option>
									<option value="HoaKy">United States</option>
								</select>
							</div>
							<div class="form-group mb-3">
								<label for="toc" class="mb-2 fw-bolder">Sở thích: </label><br>
								<input type="checkbox" name="hobbies" value="R">&nbsp;Đọc
								sách&nbsp; <input type="checkbox" name="hobbies" value="M">&nbsp;Nghe
								nhạc&nbsp; <input type="checkbox" name="hobbies" value="T">&nbsp;Du
								lịch&nbsp; <input type="checkbox" name="hobbies" value="O">&nbsp;Khác&nbsp;
							</div>
							<div class="form-group mb-3">
								<label for="toc" class="mb-2 fw-bolder">Ghi chú: </label><br>
								<textarea name="notes" rows="3" cols="70"></textarea>
							</div>
							<div class="form-group mb-3">
								<label for="toa" class="mb-2 fw-bolder">Hình ảnh: </label> <input
									type="file" name="photo_file" class="form-control" id="photo_file"
									required>
							</div>
							<hr>
							<button type="submit" class="btn btn-info">Đăng Ký</button>
						</form>
					</div>
				</div>
				<br>
				<br>
			</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>