<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.bru.model.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<jsp:include page="../Template/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../Template/manumaster.jsp"></jsp:include>

	<br>

	<br>

	<%
		CustomerBean bean = null;
	%>
	<%
		bean = (CustomerBean) request.getSession().getAttribute("bean");
	%>
	<form style="margin-left: 30%;" class="form-horizontal" action="up3"
		method="POST" name="gotoregister" onsubmit=" return dd();">


		<div class="form-group">
			<label for="idcard" class="col-sm-2 control-label">ID</label>
			<div class="col-sm-4">
				<input type="hidden" value="<%=bean.getCuId()%>" name="reg2">
				<input type="text" class="form-control" id="idcard"
					placeholder="ปชช" name="idcard" disabled="disabled" maxlength="13"
					value="<%=bean.getCuIdcard()%>">
			</div>
		</div>
		<div class="form-group">
			<label for="inputgender" class="col-sm-2 control-label">name
				title</label>
			<div class="col-sm-2">
				<select name="gender" class="form-control">
					<option value="<%=bean.getCuGender()%>">เลือกอันเดิม</option>
					<option value="นาย">นาย</option>
					<option value="นาง">นาง</option>
					<option value="นางสาว">นางสาว</option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="inputUsername3" class="col-sm-2 control-label">Username</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="fristname"
					placeholder="fristname" name="fristname"
					value="<%=bean.getCuFname()%>">
			</div>

			<div class="col-sm-2">
				<input type="text" class="form-control" id="lastname"
					placeholder="lastname" name="lastname"
					value="<%=bean.getCuLastname()%>">
			</div>
		</div>
		<div class="form-group">
			<label for="inputAddress3" class="col-sm-2 control-label">Address</label>
			<div class="col-sm-4">
				<textarea rows="5" class="form-control" id="Address"
					placeholder="Address" name="address">"<%=bean.getCuAddress()%></textarea>
			</div>
		</div>

		<div class="form-group">
			<label for="inputtelephone" class="col-sm-2 control-label">telephone</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="telephone"
					value="<%=bean.getCuTelephone()%>" placeholder="telephone"
					name="telephone" maxlength="10">
			</div>
		</div>

		<div class="form-group row">
			<div class="form-group col-md-3"></div>
			<div class="form-group col-md-2"></div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset col-md-10">
				<button type="submit" class="w3-button w3-purple w3-round-xlarge "
					style="width: 30%">save</button>
				<a href="remember" class="btn btn-primary">กลับ</a>
			</div>
		</div>
	</form>
	</div>

</body>
<script type="text/javascript">
	function dd() {
		if (!checkID(document.gotoregister.idcard.value)) {
			alert('รหัสประชาชนไม่ถูกต้อง');
			return false;
		}
		if (document.gotoregister.gender.value == "") {
			alert('กรุณาเลือกคำนำหน้า');
			document.gotoregister.gender.focus();
			return false;
		}
		if (document.gotoregister.fristname.value == "") {
			alert('กรุณาใส่ ชื่อ');
			document.gotoregister.fristname.focus();
			return false;
		}
		if (document.gotoregister.lastname.value == "") {
			alert('กรุณาใส่ นามสกุล');
			document.gotoregister.lastname.focus();
			return false;
		}
		if (document.gotoregister.address.value == "") {
			alert('กรุณาใส่ ที่อยู่');
			document.gotoregister.address.focus();
			return false;
		}
		if (document.gotoregister.telephone.value == "") {
			alert('กรุณาใส่หมายเลขโทรศัพท์');
			document.gotoregister.telephone.focus();
			return false;
		}

	}
	function checkID(id) {
		if (id.length != 13)
			return false;
		for (i = 0, sum = 0; i < 12; i++)
			sum += parseFloat(id.charAt(i)) * (13 - i);
		if ((11 - sum % 11) % 10 != parseFloat(id.charAt(12)))
			return false;
		return true;
	}
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