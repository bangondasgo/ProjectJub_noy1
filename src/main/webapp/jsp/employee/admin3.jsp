<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@page import="com.bru.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<jsp:include page="../Template/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../Template/manumaster.jsp"></jsp:include>

	<%
		List<UserBean> list = null;
		List<CustomerBean> listcus = null;
		Integer a = 0, b = 0;
	%>
	<%
		list = (List<UserBean>) request.getSession().getAttribute("listuser");
		listcus = (List<CustomerBean>) request.getSession().getAttribute("listcus");
	%>
	<div class="row"></div>
	<div class="btn-group btn-group-justified">
		<a class="btn btn-warning btn-lg" onclick="a()">ข้อมูลพนักงาน</a> <a
			class="btn btn-primary btn-lg" onclick="b()">ข้อมูลผู้ประกอบการศูนย์อาหาร</a>

	</div>

	<div class="box1" style="display: none;">
		<h2 align="center">พนักงาน</h2>
		<form name="updeate" action="#" method="post">
			<input id="myInput" style="width: 30%" align="right" type="text"
				placeholder="ค้นหา...." class="w3-input w3-border w3-light-grey">
			<input type="hidden" id="regid" name="regid">
			<table class="w3-table-all w3-card-4">
				<thead>
					<tr>
						<th class="text-center">ลำดับ</th>
						<th class="text-center">คำนำหน้า</th>
						<th class="text-center">Id</th>
						<th class="text-center">password</th>
						<th class="text-center">ชื่อ</th>
						<th class="text-center">นามสกุล</th>
						<th class="text-center">ที่อยู่</th>
						<th class="text-center">เบอร์โทรสัพท์</th>
						<th class="text-center">ลายละเอียด</th>

					</tr>
				</thead>
				<tbody id="myTable">
					<%
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr class="text-center">

						<td><%=a = a + 1%></td>
						<td><%=list.get(i).getGender()%></td>
						<td><%=list.get(i).getUsername()%></td>
						<td><%=list.get(i).getPassword()%></td>
						<td><%=list.get(i).getFristname()%></td>
						<td><%=list.get(i).getLastname()%></td>
						<td><%=list.get(i).getAddress()%></td>
						<td><%=list.get(i).getTelephone()%></td>
						<td><button onclick="gotoUpdate2('<%=list.get(i).getId()%>')"
								class="btn btn-success btn-icon-anim btn-square">เเก้ไข</button>
							<button onclick="gotoDel('<%=list.get(i).getId()%>')"
								class="btn btn-success btn-icon-anim btn-square">ลบ</button></td>

					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</form>
	</div>

	<div class="box2" style="display: none;">
		<form name="updeate2" action="#" method="post">
			<h2 align="center">ลูกค้า</h2>
			<input id="myInput" style="width: 30%" align="right" type="text"
				placeholder="ค้นหา...." class="w3-input w3-border w3-light-grey">
			<input type="hidden" id="regid2" name="regid2">
			<table class="w3-table-all w3-card-4">
				<thead>
					<tr>
						<th class="text-center">ลำดับ</th>
						<th class="text-center">IdCard</th>
						<th class="text-center">ชื่อ</th>
						<th class="text-center">นามสกุล</th>
						<th class="text-center">ที่อยู่</th>
						<th class="text-center">เบอร์โทรสัพท์</th>
						<th class="text-center">ลายละเอียด</th>
					</tr>
				</thead>
				<tbody id="myTable">
					<%
						for (int i = 0; i < listcus.size(); i++) {
					%>
					<tr class="text-center">

						<td><%=b = b + 1%></td>
						<td><%=listcus.get(i).getCuIdcard()%></td>
						<td><%=listcus.get(i).getCuFname()%></td>
						<td><%=listcus.get(i).getCuLastname()%></td>
						<td><%=listcus.get(i).getCuAddress()%></td>
						<td><%=listcus.get(i).getCuTelephone()%></td>
						<td><button
								onclick="gotoUpdate22('<%=listcus.get(i).getCuId()%>')"
								class="btn btn-success btn-icon-anim btn-square">เเก้ไข</button>
							<button onclick="gotoDel2('<%=listcus.get(i).getCuId()%>')"
								class="btn btn-success btn-icon-anim btn-square">ลบ</button></td>
						
						

					</tr>
					<%
						}
					%>
				</tbody>
			</table>

		</form>
	</div>

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

	$(document).ready(
			function() {
				$("#myInput").on(
						"keyup",
						function() {
							var value = $(this).val().toLowerCase();
							$("#myTable tr").filter(
									function() {
										$(this).toggle(
												$(this).text().toLowerCase()
														.indexOf(value) > -1)
									});
						});
			});
</script>
<script type="text/javascript">
	function a() {
		$(".box1").show('slow');
		$(".box2").hide('slow');
	}
	function b() {
		$(".box2").show('slow');
		$(".box1").hide('slow');
	}
	function gotoUpdate2(filter) {
		document.getElementById("regid").value = filter;
		document.updeate.action = "update1";
		document.updeate.submit();
	}
	function gotoDel(filter) {
		document.getElementById("regid").value = filter;
		document.updeate.action = "del1";
		document.updeate.submit();
	}
	function gotoUpdate22(filter) {
		document.getElementById("regid2").value = filter;
		document.updeate2.action = "update2";
		document.updeate2.submit();
	}
	function gotoDel2(filter) {
		document.getElementById("regid2").value = filter;
		document.updeate2.action = "del2";
		document.updeate2.submit();
	}
</script>

</html>