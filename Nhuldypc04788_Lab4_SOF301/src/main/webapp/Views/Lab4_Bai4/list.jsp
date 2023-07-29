<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab4_Bai3</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
<div class="alert alert-info text-center" role="alert">MENU</div>
	<div class="container">
		<div class="row">
			<c:forEach items="${items}" var="item">
				<div class="col-12 col-md-6 col-lg-4 mb-5">
					<div class="card" style="width: 18rem;">
						 <a href="DetailServlet?Id=${item.itemId}"> <img src="<c:url value='/image/${item.image}' />"
							class="card-img-top"></a>
						<div class="card-body">
							<h5 class="card-title text-center">${item.name}</h5>
							<p class="card-text">
								<del>${item.price}</del>
								${item.price*(1-item.discount)}
							</p>
							<!-- <a href="#" class="btn btn-primary">Buy</a> -->
							
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<footer>
		<div class="footer-content mt-5">
			<div class="card card-footer text-center">PC04788 - Lý Dương Yến Như</div>
		</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>