<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab2_bai1</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container mt-3">
		<form action="/Nhuldypc04788_Lab2_SD18101/TamGiacForm" method="post">

			<div class="card text-dark mb-3">
				<div class=" card-header bg-info text-center">Thông Tin Hình
					Tam Giác</div>
				<div class="card-body">
					<div class="mb-3">
						<label for="a" class="form-label">Cạnh A</label> <input name="a"
							placeholder="Cạnh a?" id="a" class="form-control" type="number"
							required>
					</div>
					<div class="mb-3">
						<label for="b" class="form-label">Cạnh B</label> <input name="b"
							placeholder="Cạnh b?" id="b" class="form-control" type="number"
							required>
					</div>
					<div class="mb-3">
						<label for="c" class="form-label">Cạnh C</label> <input name="c"
							placeholder="Cạnh c?" id="c" class="form-control" type="number"
							required>
					</div>

				</div>
				<div class="card-footer">
					<button type="submit"
						formaction="/Nhuldypc04788_Lab2_SD18101/dien-tich"
						class="btn btn-outline-secondary">Tính diện tích</button>
					<button type="submit"
						formaction="/Nhuldypc04788_Lab2_SD18101/chu-vi"
						class="btn btn-outline-secondary">Tính chu vi</button>
				</div>
			</div>
		</form>
		<h3>${message}</h3>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>