<%@page import="com.bru.model.UserBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../Template/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../Template/manumaster.jsp"></jsp:include>

	<br>
	<h2 align="center">เพิ่มข้อมูลพนักงาน</h2>
	<br>

	<%
		UserBean bean = null;
	%>
	<%
		bean = (UserBean) request.getSession().getAttribute("bean");
	%>
	<form style="margin-left: 20%;" class="form-horizontal" action="up2"
		method="POST" name="gotoregister">

		<input type="hidden" class="form-control" placeholder="รหัส"
			name="regs" maxlength="6" value="<%=bean.getId()%>">
		<div class="form-group">
			<label for="idcard" class="col-sm-2 control-label">ID</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="username"
					value="<%=bean.getUsername()%>" disabled="disabled"
					placeholder="รหัส" name="username" maxlength="6">
			</div>
		</div>
		<div class="form-group">
			<label for="idcard" class="col-sm-2 control-label">Password</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="password"
					placeholder="รหัสผ่าน" name="password" maxlength="6"
					value="<%=bean.getPassword()%>">
			</div>
		</div>
		<div class="form-group">
			<label for="inputUsername3" class="col-sm-2 control-label">ชื่อ
				- นามสกุุล</label>
			<div class="col-sm-3">
				<select name="gender" class="form-control">
					<option value="<%=bean.getUsername()%>"><%=bean.getGender()%></option>
					<option value="นาย">นาย</option>
					<option value="นาง">นาง</option>
					<option value="นางสาว">นางสาว</option>
				</select>
			</div>
			<div class="col-sm-2">
				<input type="text" class="form-control"
					value="<%=bean.getFristname()%>" id="fristname"
					placeholder="fristname" name="fristname">
			</div>

			<div class="col-sm-3">
				<input type="text" class="form-control" id="lastname"
					value="<%=bean.getLastname()%>" placeholder="lastname"
					name="lastname">
			</div>
		</div>
		<div class="form-group">
			<label for="inputAddress3" class="col-sm-2 control-label">Address</label>
			<div class="col-sm-6">
				<textarea rows="5" class="form-control" id="Address"
					placeholder="Address" name="address"><%=bean.getAddress()%></textarea>
			</div>
		</div>

		<div class="form-group">
			<label for="inputtelephone" class="col-sm-2 control-label">telephone</label>
			<div class="col-sm-6">
				<input type="text" class="form-control"
					value="<%=bean.getTelephone()%>" id="telephone"
					placeholder="telephone" name="telephone">
			</div>
		</div>
		<div class="form-group">
			<label for="inputtelephone" class="col-sm-2 control-label">ตำแหน่ง</label>
			<div class="col-sm-2">
				<select name="status" class="form-control">
					<option value="<%=bean.getStatus()%>">ตำแหน่งเดิม</option>
					<option value="2">เช่าภาชนะ</option>
					<option value="3">เบิกภาชนะ</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<div class="form-group col-md-3"></div>
			<div class="form-group col-md-2"></div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-success">save</button>
				<a href="remember" class="btn btn-primary">กลับ</a>
			</div>
		</div>
	</form>
	</div>

</body>
<script type="text/javascript">
	function w3_open() {
		document.getElementById("main").style.marginLeft = "20%";
		document.getElementById("mySidebar").style.width = "20%";
		document.getElementById("mySidebar").style.display = "block";
		document.getElementById("openNav").style.display = 'none';
	}
	function w3_close() {
		document.getElementById("main").style.marginLeft = "0%";
		document.getElementById("mySidebar").style.display = "none";
		document.getElementById("openNav").style.display = "inline-block";
	}
</script>
</html>