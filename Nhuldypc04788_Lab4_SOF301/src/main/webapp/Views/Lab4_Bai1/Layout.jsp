<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab4_Bai1</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
	<div class="layout">
		<div class="container">
			<header class="header-main">
				<h1>Online Mall Store</h1>
				<hr>
				<h4>The center point of the professional programing</h4>
			</header>
			<div class="header-bottom">

				<%@include file="/Views/Lab4_Bai1/Menu.jsp"%>

			</div>
			<div class="row">
				<article class="col-lg-9">

					<div class="row">
					<jsp:include page="/Views/Lab4_Bai1/Item.jsp">
						<jsp:param name="name" value="McDonald Hamburger" />
						<jsp:param name="image" value="sp1.png" />
					</jsp:include>
					<jsp:include page="/Views/Lab4_Bai1/Item.jsp">
						<jsp:param name="name" value="Muffin Vanilla" />
						<jsp:param name="image" value="sp2.jpg" />
					</jsp:include>
					<jsp:include page="/Views/Lab4_Bai1/Item.jsp">
						<jsp:param name="name" value="Beef with caviar sauce" />
						<jsp:param name="image" value="sp3.jpg" />
					</jsp:include>
					<jsp:include page="/Views/Lab4_Bai1/Item.jsp">
						<jsp:param name="name" value="Strawberry truffle cake" />
						<jsp:param name="image" value="sp4.jpg" />
					</jsp:include>
					<jsp:include page="/Views/Lab4_Bai1/Item.jsp">
						<jsp:param name="name" value="Grilled vegetables" />
						<jsp:param name="image" value="sp5.jpg" />
					</jsp:include>
					<jsp:include page="/Views/Lab4_Bai1/Item.jsp">
						<jsp:param name="name" value="Blueberry bread" />
						<jsp:param name="image" value="sp6.jpg" />
					</jsp:include>
						
					</div>
				</article>
				<aside class="col-lg-3">
					<div class="main-content">
						<div class="carr">

							<%@include file="/Views/Lab4_Bai1/Login.jsp"%>

							<%@include file="/Views/Lab4_Bai1/Category.jsp"%>

						</div>
					</div>
				</aside>
			</div>

			<footer>
				<div class="footer-content mt-5">
					<div class="card card-footer text-center">PC04788 - Lý Dương
						Yến Như</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>