<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../Template/header.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../Template/manu.jsp"></jsp:include>

<div id="main">
<div class="w3-teal">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1 align="center">ภาชนะ</h1>
  </div>
</div>
 
<!-- <img src="img_car.jpg" alt="Car" style="width:100%"> -->
<div class="form-group row">
    <div class="form-group col-md-12">

    </div>
</div>
<div class="form-group row">
    <div class="form-group col-md-3">

    </div>

    <div class="form-group col-md-6">
        <form class="">

    <table class="table table-bordered">

            <tr>
              <th class="col-md-2 iefix">ภาขนะ</th>
              <th class="col-md-3 iefix">จำนวน</th>


            </tr>


            <tr >
              <td>ถ้วย</td>
              <td>50</td>
            </tr>

            <tr >
              <td>จาน</td>
              <td>100</td>
            </tr>

           <tr >
              <td>ช้อนซ่อม</td>
              <td>120</td>
            </tr>

           <tr >
               <td>ชาม</td>
               <td>120</td>
             </tr>



      </table>

    </form>
</div>


      <div class="form-group col-md-3">

        </div>

  
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