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

					<form class="row shadow-lg p-3" action="${url}/edit-profile"
						method="post">

						<div class="m-2 text-center">

							<h1 class="">Đăng Ký</h1>

						</div>
						<div class="col-md-12 m-2">

							<label for="id" class="form-label">ID<span
								class="text-danger">*</span></label> <input type="text"
								class="form-control" name="id" placeholder="id" id="username" required />
						</div>
						<!-- Tên đăng nhập -->
						<div class="col-md-12 m-2">

							<label for="text" class="form-label">Username<span
								class="text-danger">*</span></label> <input type="text"
								class="form-control" name="username" placeholder="username"
								id="username" required />
						</div>
						<!-- Pass -->
						<div class="col-md-12 m-2">

							<label for="password" class="form-label">Password<span
								class="text-danger">*</span></label> <input type="password"
								class="form-control" name="password" id="password"
								placeholder="password" id="username" required />
						</div>

						<!-- Fullname -->
						<div class="col-md-12 m-2">

							<label for="fullname" class="form-label">Fullname<span
								class="text-danger">*</span></label> <input type="text"
								class="form-control" placeholder="fullname" id="fullname"
								name="fullname" required />

						</div>
						<!-- Email -->
						<div class="col-md-12 m-2">

							<label for="email" class="form-label">Email<span
								class="text-danger">*</span></label> <input type="text"
								class="form-control" placeholder="fullname" id="email"
								name="email" required />
						</div>
						<div class="col-md-12 m-2">
							<div class="form-check">
								<input class="form-check-input"
									${form.role == true ? 'checked' : ''} type="radio" name="role"
									id="admin" required value="1"> <label
									class="form-check-label" for="admin"> Admin </label>
							</div>
							<div class="form-check">
								<input class="form-check-input"
									${form.role == false ? 'checked' : ''} type="radio" name="role"
									id="user" required value="0"> <label
									class="form-check-label" for="user"> User </label>
							</div>

						</div>
						<!-- submit button -->
						<div class="col-md-12 m-2">

							<button id="submit" class="btn btn-info" type="submit">Đăng
								Ký</button>

							<a role="button" href="sign-in" class="btn btn-info">Đăng
								nhập</a>
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