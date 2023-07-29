<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa thông tin</title>
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

							<h1 class="">Chỉnh sửa thông tin</h1>
							<h3>Xin chào ${curentUser.fullname} !</h3>
						</div>
						<!-- ID -->
						<div class="col-md-12 m-2">

							<label for="id" class="form-label">ID<span
								class="text-danger">*</span></label> <input type="text"
								class="form-control" name="id" placeholder="id" id="username"
								value="${form.id}" required />
						</div>
						<!-- Username -->
						<div class="col-md-12 m-2">

							<label for="text" class="form-label">Username<span
								class="text-danger">*</span></label> <input type="text"
								class="form-control" name="username" placeholder="username"
								id="username" value="${form.username}" required />
						</div>

						<!-- Password -->
						<div class="col-md-12 m-2">

							<label for="Password" class="form-label">Password<span
								class="text-danger">*</span></label> <input type="password"
								class="form-control" placeholder="Mật Khẩu" id="Password"
								value="${form.password}" required />
						</div>
						<div class="col-md-12 m-2">

							<label for="fullname" class="form-label">Fullname<span
								class="text-danger">*</span></label> <input type="text"
								class="form-control" placeholder="fullname" id="fullname"
								name="fullname" value="${form.fullname}" required />

						</div>
						<div class="col-md-12 m-2">

							<label for="email" class="form-label">Email<span
								class="text-danger">*</span></label> <input type="text"
								class="form-control" placeholder="fullname" id="email"
								name="email" value="${form.email}" required />
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

							<button id="submitBtn" class="btn btn-info" type="submit">Xác
								nhận</button>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-info" data-bs-toggle="modal"
								data-bs-target="#changepass">Đổi mật khẩu</button>
							<a role="button" href="${url}/sign-out" class="btn btn-info">Đăng
								xuất</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
		<div class="modal fade" id="changepass" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Đổi mật khẩu</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="${url}/change-password" method="post">
					 <div class="form-group mb-3">
                                    <label for="username" class="mb-2 fw-bolder">Username: ${currentUser.username}</label> 
                                    <input type="hidden" value="${currentUser.password}" name="sqlpass">
                                </div>
						<div class="mb-3">
							<label for="oldpass" class="form-label">Mật khẩu cũ</label> <input type="password"
								class="form-control" name="oldpass">
						</div>

						<div class="mb-3">
							<label for="newpass" class="form-label">Mật khẩu mới</label> <input type="password"
								class="form-control" name="newpass" required>
						</div>
						 <div class="form-group mb-3">
                        <label for="cfpass">Xác nhận mật khẩu mới:</label>
                        <input type="password" class="form-control" name="confirmpass" id="cfpass"  type="password" required >
                    	</div>
						<hr>
						<button type="submit" class="btn btn-ìnfor">Xác nhận</button>
						

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