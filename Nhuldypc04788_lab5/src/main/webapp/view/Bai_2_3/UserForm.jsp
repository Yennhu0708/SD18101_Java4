<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>

<body>
	<br>
	<br>
	<div class="container">
		<div class="row col-lg-12">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header bg-info">FORM USER</div>
					<div class="card-body">
						<c:url var="url" value="/user" />
						<form action="${url}/index" method="post">
							 <div class="form-group mb-3">
                                    <label for="ID" class="mb-2 fw-bolder">ID: </label> 
                                    <input type="text" name="id" value="${form.id}"
                                        class="form-control" id="toa" placeholder="Nhập tên đăng nhập">
                                </div> 
							<div class="form-group mb-3">
								<label for="username" class="mb-2 fw-bolder">Username: </label>
								<input type="text" name="username" value="${form.username}"
									class="form-control" id="toa" placeholder="Nhập tên đăng nhập">
							</div>
							<div class="form-group mb-3">
								<label for="password" class="mb-2 fw-bolder">Password: </label>
								<input type="password" name="password" value="${form.password}"
									class="form-control" id="tob" placeholder="Nhập cạnh b">
							</div>
							<div class="form-group mb-3">
								<label for="fullname" class="mb-2 fw-bolder">Fullname: </label>
								<input type="text" name="fullname" value="${form.fullname}"
									class="form-control" id="tob" placeholder="Nhập cạnh b">
							</div>
							<div class="form-group mb-3">
								<label for="email" class="mb-2 fw-bolder">Email: </label> <input
									type="email" name="email" value="${form.email}"
									class="form-control" id="tob" placeholder="Nhập cạnh b">
							</div>
							<div class="form-group mb-3">
								<div class="form-check">
									<input class="form-check-input"
										${form.role == true ? 'checked' : ''} type="radio" name="role"
										id="admin" value="1" > <label
										class="form-check-label" for="admin"> Admin </label>
								</div>
								<div class="form-check">
									<input class="form-check-input"
										${form.role == false ? 'checked' : ''} type="radio"
										name="role" id="user" value="0" > <label
										class="form-check-label" for="user"> User </label>
								</div>
							</div>
							<hr>
							<button formaction="${url}/create" class="btn btn-info">Create</button>
							<button formaction="${url}/update" class="btn btn-info">Update</button>
							<button formaction="${url}/delete" class="btn btn-info">Delete</button>
							<button href="${url}/index" class="btn btn-info">Reset</button>
						</form>
					</div>
				</div>
				<div class="text-danger" role="alert">${message}</div>
				<br> <br>
			</div>
		</div>

		<!-- User Management Table -->
		<div class="row mt-5">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header btn-info">User Management Table</div>
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th>ID</th>
									<th>Username</th>
									<th>Password</th>
									<th>Fullname</th>
									<th>Email</th>
									<th>Role</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${item}">
									<tr>
										<td scope="row">${list.id}</td>
										<td>${list.username}</td>
										<td>${list.password}</td>
										<td>${list.fullname}</td>
										<td>${list.email}</td>
										<td>${list.role}</td>
										<td><a role="button" href="${url}/edit?btn=${list.id}"
											class="btn btn-info btn-sm">Edit</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
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