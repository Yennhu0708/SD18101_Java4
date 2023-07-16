<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab3_bai1</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid mt-5">
	
		<form action="/Nhuldypc04788_Lab3/UpLoadFile" method="Post" enctype="multipart/form-data" >

			<div class="card ">
				<h5 class="card-header text-dark bg-info">Tải Tệp Ảnh</h5>
				<div class="card-body">
					<div>
						<label for="formFileLg" class="form-label">Chọn Tệp Ảnh</label> 
						<input class="form-control form-control-lg"
							id="formFileLg" type="file" name="photo_file">
					</div>
					<div>
						<label for="formFileLg" class="form-label">Chọn Tệp Tài Liệu</label> 
						<input class="form-control form-control-lg"
							id="formFileLg" type="file" name="doc_file">
					</div>
					<div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3">
						<button type="submit" class="btn btn-outline-info">Up Load</button>
					</div>
				</div>

			</div>

		</form>
	</div>
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>