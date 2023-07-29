<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark mb-3"
	data-bs-theme="dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"> <span
			class="bi bi-house-door-fill"></span> Trang chủ
		</a>
		<button class="navbar-toggler" type="button"
			data-bs-toggle="offcanvas" data-bs-target="#myNavbarhidden"
			aria-controls="myNavbarhidden" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="offcanvas offcanvas-end bg-body-secondary" tabindex="-1"
			id="myNavbarhidden" aria-labelledby="navbarOffcanvasLgLabel">
			<div class="offcanvas-header">
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
					aria-label="Close"></button>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item m-2"><a class="nav-link"
					aria-current="page" href="#"> <i class="bi bi-menu-button-wide"></i>
						Giới thiệu
				</a></li>
				<li class="nav-item m-2"><a class="nav-link" href="#"> <i
						class="bi bi-telephone-fill"></i> Liên hệ
				</a></li>
				<li class="nav-item m-2"><a class="nav-link" href="#"> <i
						class="bi bi-envelope-fill"></i> Góp ý
				</a></li>
				<li class="nav-item m-2"><a class="nav-link" href="#"> <i
						class="bi bi-info-circle-fill"></i> Hỏi đáp
				</a></li>

				<li class="nav-item dropdown m-2"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> <i
						class="bi bi-person-fill"></i> Tài khoản
				</a>
					<ul class="dropdown-menu bg-light shadow-lg">
						<li><a class="dropdown-item text-dark" href="#">Đăng nhập</a></li>
						<li><a class="dropdown-item text-dark" href="#">Quên mật
								khẩu</a></li>
						<li><a class="dropdown-item dropdown-item-divider text-dark"
							href="#">Đăng ký thành viên</a></li>
						<hr>
						<li><a class="dropdown-item text-dark" href="#">Đăng xuất</a></li>
						<li><a class="dropdown-item text-dark" href="#">Đổi mật
								khẩu</a></li>
						<li><a class="dropdown-item dropdown-item-divider text-dark"
							href="#">Cập nhật hồ sơ</a></li>
						<hr>
						<li><a class="dropdown-item text-dark" href="#">Đơn hàng</a></li>
						<li><a class="dropdown-item text-dark" href="#">Hàng đã
								mua</a></li>
					</ul></li>

				<ul class="navbar-nav ms-auto">
					<li class="nav-item m-2"><a class="nav-link" href="#">English</a>
						</xli>
					<li class="nav-item m-2"><a class="nav-link" href="#">Tiếng
							Việt</a></li>
				</ul>
			</ul>
		</div>
	</div>
</nav>