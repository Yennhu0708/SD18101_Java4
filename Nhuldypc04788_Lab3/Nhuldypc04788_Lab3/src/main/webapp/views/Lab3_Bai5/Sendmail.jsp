<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gửi Mail</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
	<mark>${message}</mark>
	<div class="container-fluid">
		<form action="/Nhuldypc04788_Lab3/sendEmail" method="post">
		
			<div class="form-group">
				<label for="exampleInputEmail1">To</label>
				 <input
					name="to"  type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter email" >
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Tiêu Đề</label> <input
					name="subject" type="text" class="form-control"
					id="exampleInputPassword1" 
					placeholder="subject">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label"> Nội Dung </label>
				<textarea class="form-control" id="exampleFormControlTextarea1" name="content"
					rows="3"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Send</button>
			<button type="submit" class="btn btn-primary">Cancel</button>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>