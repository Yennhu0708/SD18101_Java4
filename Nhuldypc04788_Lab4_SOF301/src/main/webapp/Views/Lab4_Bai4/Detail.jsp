<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="car border-info">
					<div class="card-header bg-info">
						<h5 class="card-title">${selectedItem.name}</h5>
					</div>
					<div>
						<img src="image/${selectedItem.image}">
					</div>

					<div class="card-body">
						<p class="card-text">
							Price:
							<del class="p-2 text-danger fw-bolder">${selectedItem.price} $</del>

						</p>
						<p class="card-text">
							New Price:
							<c:set var="newprice" value="${selectedItem.price*(1-selectedItem.discount)}" />
							<fmt:formatNumber value="${newprice}" /> 
							$
						</p>
					<p class="card-text">
							<c:choose>
								<c:when test="${newprice < 100}">Discount: Giá thấp</c:when>
								<c:when test="${newprice > 200}">Discount: Giá cao</c:when>
								<c:otherwise>Discount: Bình thường</c:otherwise>
							</c:choose>
						</p> 
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>
