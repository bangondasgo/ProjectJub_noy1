
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.bru.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="../Template/header.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../Template/manu2.jsp"></jsp:include>



<% DetailrentBean bean = null; %>
<% bean = (DetailrentBean) request.getSession().getAttribute("bean");%>

<div  class="page" style="width: 80%;">
	

	
	<div id="printableArea" style="padding: 10mm; ">
	
	
	<br>
	<br>
	<br>
	<div
		style="border: 3px; border-style: solid; border-color: black; "  >

<br>

		<p  id="idtran"  style="margin-left: 5mm;"></p>
		 <div class="row">
    <div class="col-md-5"></div>
    <div class="col-md-4">
		<img src="access/img/360px-LOGO-bru.png" style="margin: center" width="120" height="150">
		</div>
		</div>
		<h2 align="center">ใบเสร็จรับเงิน </h2>
		<h2 align="center">OFFICIAL RECEIPT</h2>
		<p align="right" style="margin-right: 5mm;" id="day"> วันที่ <%=bean.getDatedateday() %> เดือน    <%=bean.getSimpleyear()%> พ.ศ.  <%=bean.getDatedateyear() %> </p>
		<hr>
		
			<div style="margin-left: 8mm" >
			<p id="nametran">รหัส   <%=bean.getIdcard() %></p>
			<p id="emailtran">จาน  <%=bean.getCD001() %></p>
			<p id="yearcartran">ชาม   <%=bean.getCB001() %></p>
			<p id="cartran">ถ้วยน้ำจิ้ม   <%=bean.getCC002() %></p>
			<p id="modeltran">ถ้วยน้ำซุป   <%=bean.getCC001() %></p>
			<p id="monnytran">รวมจำนวน   <%=bean.getAll() %></p>
			<p id="monnytran">ราคาทั้งหมด   <%=bean.getNumber()%> บาท</p>
		  <p align="right" style="margin-right: 8mm;" id="admintran">มหาวิทยาลัยราชภัฏบุรีรัมย์</p>
		</div>
	



	</div><br>
	</div>
	<div align="center">
	<a  type="button" class="btn btn-info btn-lg"
		onclick="printDiv('printableArea')"><span class="glyphicon glyphicon-print"></span> ปริ้นใบเสร็จ</a>

	
		<form action="index1" style="margin-left: 15mm;">
<input type="submit" class="btn btn-info btn-lg" value="กลับไปหน้าหลัก">
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
	function printDiv(divName) {
	     var printContents = document.getElementById(divName).innerHTML;
	     var originalContents = document.body.innerHTML;
	     document.body.innerHTML = printContents;
	     window.print();
	     document.body.innerHTML = originalContents;
	}
</script>


</html>