<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.util.List"%>
       <%@page import="com.bru.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<jsp:include page="../Template/header.jsp"></jsp:include>
<style type="text/css">
h5 {
    text-indent: 20px;
    text-align:  center;
    letter-spacing: 1px;
    }

 input {
        
         
            font-weight: 200;
            color:black;
            padding-left: 0;
  box-shadow: none !important;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
input[type="number"] {
    -moz-appearance: textfield;
} 
button {
    
   
    color: white;
    padding: 15px 32px;
    text-align: center;
    display: inline-block;
    font-size: 18px;
    margin: 8px 6px;
    cursor: pointer;
}
</style>
</head>
<body>
<jsp:include page="../Template/manu2.jsp"></jsp:include>


<!-- <img src="img_car.jpg" alt="Car" style="width:100%"> -->
<div class="form-group row">
    <div class="form-group col-md-12">

    </div>

<div class="form-group row">
    <div class="form-group col-md-1">

    </div>
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>

<% List<ContainerBean> list = null ; %>
<% list = (List<ContainerBean>) request.getSession().getAttribute("list"); %>
    <div class="form-group col-md-10">
    
        <form style="margin-left: 30%; margin-right: 20%;" class="form-horizontal" name = "welcome" action="gotorpse" method="post" onsubmit=" return ddd();" >
					<br>
				<div  style=" text-align:center; background-color: Bisque  ;   border: 2px solid red; padding-top: 50px; padding-bottom: 50px;  border-radius: 12px;">
				
		<h5> 1.ชาม เหลือ  <%=list.get(0).getNumber() %> ใบ</h5>
		<h5> 2.ถ้วยน้ำซุป เหลือ  <%=list.get(1).getNumber() %> ใบ</h5>
		<h5> 3.ถ้วยน้ำจิ้ม เหลือ  <%=list.get(2).getNumber() %> ใบ </h5>
		<h5> 4.จาน เหลือ  <%=list.get(3).getNumber() %> ใบ</h5>
		
					</div>
	
		
				 <h3  style="margin-left: 10%;"><span style="color: red;">*</span> ถ้าอันไหนไม่ได้เพิ่มให้ใส่   0 ด้วย</h3>	<br>
  <div class="form-group">
  <%
						 if(result.equals("L")){
					%>
					<div class="alert alert-success alert-dismissible " style=" margin-right: 50%; margin-left: 10%;">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Success </strong> Logout Success
					</div>
					<%} %>
    <label for="idcard" class="col-sm-3 control-label">ชาม</label>
    
    <div class="col-sm-3">
      <input type="number" class="form-control" id="idcard1" placeholder="ใส่จำนวน" name="CB001">
    </div>
  </div>

   <div class="form-group">
    <label for="idcard" class="col-sm-3 control-label">จาน</label>
    <div class="col-sm-3">
      <input type="number" class="form-control" id="idcard2" placeholder="ใส่จำนวน" name="CD001">
    </div>
  </div>
  
  
   <div class="form-group">
    <label for="idcard" class="col-sm-3 control-label">ถ้วยน้ำจิ้ม</label>
    <div class="col-sm-3">
      <input type="number" class="form-control" id="idcard3" placeholder="ใส่จำนวน" name="CC002">
    </div>
  </div>
  
   <div class="form-group">
    <label for="idcard" class="col-sm-3 control-label">ถ้วยน้ำซุป</label>
    <div class="col-sm-3">
      <input type="number" class="form-control" id="idcard4" placeholder="ใส่จำนวน" name="CC001">
    </div>
  </div>
  
  
   <div class="form-group row">
<div class="form-group col-md-3">
   </div>
<div class="form-group col-md-2">

					</div>
					</div>
  <div class="form-group">
    <div class="col-sm-12">
      <button type="submit" class="w3-button w3-blue w3-round"  >เพิ่มภาชนะ</button>
       <button type="reset" class="w3-button w3-blue w3-round">เคลียร์ค่า</button>
    
  </div>

		</div>	
    </form>
</div>


      <div class="form-group col-md-1">
        </div>

  </div>
</div>
</div>
</body>
<script type="text/javascript">
function ddd(){

	if(document.welcome.CB001.value == "" && document.welcome.CD001.value == ""  && document.welcome.CC002.value == "" && document.welcome.CC001.value == ""){
		alert('ใส่ค่าา');
		document.welcome.CB001.focus();
		return false;}
	if(document.welcome.CB001.value == ""){
		
		 $('#idcard1').val(0);
			
	}
	if(document.welcome.CD001.value == ""){
		
		 $('#idcard2').val(0);
			
	}
	if(document.welcome.CC002.value == ""){
		
		 $('#idcard3').val(0);
			
	}
	if(document.welcome.CC001.value == ""){
		
		 $('#idcard4').val(0);
			
	}
}


$(function() {

    $('#idcard1').keyup(function() {  
    	  $('#idcard2').val(0);
	        $('#idcard3').val(0);
	        $('#idcard4').val(0);
        updateTotal();
    });
   


 });


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