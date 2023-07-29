<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
<c:url var="url" value="/account" />
	<div
		class="d-flex flex-column min-vh-100 justify-content-center align-items-center">

		<div class="container">

			<div class="row justify-content-center">

				<div class="col-md-8 m-5">

					<form class="row shadow-lg p-3" action=""
						method="post">

						<div class="m-2 text-center">

							<h1 class="">Email</h1>

						</div>
						
						<!-- Email -->
						<div class="col-md-12 m-2">

							<label for="email" class="form-label">Email<span
								class="text-danger">*</span></label> <input type="text"
								class="form-control" placeholder="fullname" id="email"
								name="email" required />
						
						<!-- submit button -->
						<div class="col-md-12 m-2">

							<button class="btn btn-info" type="submit">Gửi Mail</button>

							<button type="reset" class="btn btn-info">Làm mới</button>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</html>