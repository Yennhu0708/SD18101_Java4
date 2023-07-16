<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>

<body>
<mark>${message}</mark>
	<div class="container-fluid">
	<form action="/Nhuldypc04788_Lab3/LoginServlet" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">Email address</label> <input
				name="email" type="email" class="form-control"
				id="exampleInputEmail1" aria-describedby="emailHelp"
				placeholder="Enter email"  value="${email}"> <small id="emailHelp"
				class="form-text text-muted">We'll never share your email
				with anyone else.</small>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Password</label> <input
				name="password" type="password" class="form-control"
				id="exampleInputPassword1" value="${password}" placeholder="Password">
		</div>
		<div class="form-group form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
			<label class="form-check-label" for="exampleCheck1"> Remember me </label>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>