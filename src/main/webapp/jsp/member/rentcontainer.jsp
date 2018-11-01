<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head>
<body>
<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
  <button class="w3-bar-item w3-button w3-large"
  onclick="w3_close()">Close &times;</button>
  <a href="index.html" class="w3-bar-item w3-button w3-padding-24"  style="font-size: 20px; font-family: cursive;">หน้าแรก</a>
  <a href="profile.html" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">ข้อมูลส่วนตัว</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">ข้อมูลการเช่าภาชนะ</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;">เปลี่ยนรหัสผ่าน</a>

</div>

<div id="main">
<div class="w3-teal">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1 align="center">report</h1>
  </div>
</div>

<!-- <img src="img_car.jpg" alt="Car" style="width:100%"> -->
<div class="form-group row">
    <div class="form-group col-md-12">

    </div>

<div class="form-group row">
    <div class="form-group col-md-1">

    </div>

    <div class="form-group col-md-10">
        <form class="">

    <table class="table table-bordered">

            <tr>
              <th class="col-md-2 iefix">no</th>
              <th class="col-md-3 iefix">datetime</th>
              <th class="col-md-1 iefix">ถ้วย</th>
              <th class="col-md-1 iefix">จาน</th>
              <th class="col-md-1 iefix">ชาม</th>
              <th class="col-md-1 iefix">ช้อนซ่อม</th>
              <th class="col-md-1 iefix">รวมรายการ</th>
              <th class="col-md-2 iefix">ยอดเงิน</th>

            </tr>


            <tr >
              <td>1</td>
              <td>14/06/61</td>
              <td>5</td>
              <td>5</td>
              <td>5</td>
              <td>5</td>
              <td>20</td>
              <td>2000</td>
            </tr>

            <tr >
              <td>2</td>
              <td>12/06/61</td>
              <td>5</td>
              <td>5</td>
              <td>5</td>
              <td>5</td>
              <td>20</td>
              <td>2000</td>
            </tr>

             <tr >
                <td>3</td>
                <td>13/06/61</td>
                <td>5</td>
                <td>5</td>
                <td>5</td>
                <td>5</td>
                <td>20</td>
                <td>2000</td>
              </tr>


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
</script>

</html>