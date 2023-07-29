<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<div class="card text-dark bg-info mb-3">
	<h3>CHỈNH SỬA NGƯỜI DÙNG</h3>
	<div class="card-header">${message}</div>
	<div class="card-body">
		<div class="mb-3">
			<label class="form-label">Username</label> <input type="text"
				class="form-control" value="${form.username}" name="username">
		</div>
		<div class="mb-3">
			<label class="form-label">Password</label> <input type="text"
				class="form-control" value="${form.password}" name="password">
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" id="check"
				${form.remember?'checked':""}> <label
				class="form-check-label" for="check"> Remember me ? </label>
		</div>
		<br>
		<button type="button" class="btn btn-primary">Create</button>
	</div>
</div>