<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="card mt-5">

	<div class="table-responsive">
		<h3>DANH SÁCH NGƯỜI DÙNG</h3>
		<table class="table table-success table-striped">
			<thead>
				<tr>
					<th scope="col">Username</th>
					<th scope="col">Password</th>
					<th scope="col">Remember</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td scope="row">${items[0].username}</td>
					<td>${items[0].password}</td>
					<td>${items[0].remember?'Yes':'No'}</td>
				</tr>
				<tr>
					<td scope="row">${items[1].username}</td>
					<td>${items[1].password}</td>
					<td>${items[1].remember?'Yes':'No'}</td>
				</tr>
				<tr>
					<td scope="row">${items[2].username}</td>
					<td>${items[2].password}</td>
					<td>${items[2].remember?'Yes':'No'}</td>
				</tr>
			</tbody>
		</table>


	</div>
</div>