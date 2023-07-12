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
		<form action="/Nhuldypc04788_Lab2_SD18101/DangKyServlet" method="post">
			<div class="card text-dark mb-3">
				<div class=" card-header bg-info text-center">Đăng Ký</div>
				<div class="card-body">
					<div class="mb-3">
						<label for="exampleInputUser" class="form-label">Tên Đăng
							Nhập</label> <input type="text" class="form-control" name="username"
							id="exampleInputUser" required>
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Password</label>
						<input type="password" class="form-control" name="password"
							id="exampleInputPassword1" type="password" required>
					</div>
					<div class="mb-3">
						<label class="form-label">Giới Tính: </label>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								value="true" id="flexRadioDefault1"> <label
								class="form-check-label" for="flexRadioDefault1"> Nam </label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								value="false" id="flexRadioDefault2" checked> <label
								class="form-check-label" for="flexRadioDefault2"> Nữ </label>
						</div>
					</div>
					<div class="mb-3">
						<input class="form-check-input" type="checkbox" name="married"
							value="" id="checked"> <label class="form-check-label"
							for="checked"> Đã có gia đình ? </label>
					</div>
					<div class="mb-3">
						<label class="form-label">Quốc Tịch: </label> <select
							class="form-select" name="country"
							aria-label="Default select example">
							<option selected>Chọn Quốc Tịch</option>
							<option value="VN">Việt Nam</option>
							<option value="US">United States</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="validationFormCheck" class="form-label">Sở
							Thích: </label>
						<div class="form-check form-check-inline">
							<input type="checkbox" class="form-check-input" id="Read"
								name="hobbies" value="Đọc
								Sách" > <label
								class="form-check-label" for="flexCheckDefault">Đọc Sách
							</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="checkbox" class="form-check-input" id="Travel"
								name="hobbies" value="Du
								Lịch" > <label
								class="form-check-label" for="Travel">Du Lịch </label>
						</div>
						<div class="form-check form-check-inline">
							<input type="checkbox" class="form-check-input" id="Music"
								name="hobbies" value="Âm
								Nhạc" > <label
								class="form-check-label" for="Music">Âm Nhạc</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="checkbox" class="form-check-input" id="orther"
								name="hobbies" value="Khác" > <label
								class="form-check-label" for="orther">Khác</label>
						</div>
					</div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">Ghi
							Chú</label>
						<textarea class="form-control" rows="3" cols="30" name="notes"
							id="exampleFormControlTextarea1" rows="3"></textarea>
					</div>
					<hr>

					<button type="submit" class="btn btn-primary">Đăng ký</button>

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