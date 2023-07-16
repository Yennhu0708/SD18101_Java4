<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>

	<div class="container-fluid mt-5">

		<form method="Post">

			<div class="card ">
				<h5 class="card-header text-dark bg-info">Ảnh Đã Tải</h5>
				<div class="card-body">
					<div>
						<h2>1. Hình: ${img.name}</h2>
						<img src="/Nhuldypc04788_Lab3/upload/${img.name}" height="100">
						<h2>2. Tài liệu: ${doc.name}</h2>
						<a href="/Nhuldypc04788_Lab3/upload/${doc.name}"> Tải về</a>
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