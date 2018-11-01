
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.bru.model.*"%>
    <%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="../Template/header.jsp"></jsp:include>
</head>
<style>

table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
th {
    text-align: center;
}
input {
        
            border-top: transparent !important;
            border-left: transparent !important;
            border-right: transparent !important;
            border-bottom: transparent !important;
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
</style>
<% CustomerBean bean = null; %>
<% bean = (CustomerBean) request.getSession().getAttribute("1");%>
<% List<ContainerBean> list = null ; %>
<% list = (List<ContainerBean>) request.getSession().getAttribute("list"); %>
<body>
<jsp:include page="../Template/manu.jsp"></jsp:include>


  <form action="rent22"  name="rent2">
 
		<div align="center"> 
		<p> 1.ชาม เหลือ  <%=list.get(0).getNumber() %> ใบ</p>
		<p> 2.ถ้วยน้ำซุป เหลือ  <%=list.get(1).getNumber() %> ใบ</p>
		<p> 3.ถ้วยน้ำจิ้ม เหลือ  <%=list.get(2).getNumber() %> ใบ</p>
		<p> 4.จาน เหลือ  <%=list.get(3).getNumber() %> ใบ</p>
		
		<input type="hidden" name="ho1" id="ho1" value=" <%=list.get(0).getNumber() %>">
		<input type="hidden" name="ho2" id="ho2" value=" <%=list.get(1).getNumber() %>">
		<input type="hidden" name="ho3" id="ho3" value=" <%=list.get(2).getNumber() %>">
		<input type="hidden" name="ho4" id="ho4" value=" <%=list.get(3).getNumber() %>">
		
		</div>
<input type="hidden" id="idcard" name="idcard" value="<%=bean.getCuIdcard() %>">
<label  style="font-size: 18px; margin-left: 20%;">รหัส  <%=bean.getCuIdcard() %></label>
<label  style="font-size: 18px; margin-left: 20%;">ชื่อ  <%=bean.getCuFname()%></label>
<table style="width:80%" align="center">
  <tr>
     <th>สินค้า</th>
    <th>จำนวน</th> 
    <th>ราคา</th>
  </tr>
  <tr>
    <td>ชาม </td>
    <td ><input  value =""id ="no1" type="number" name="CB001"></td>
    <td id ="po1"></td>
  </tr>
  <tr>
    <td>ถ้วยน้ำซุป </td>
    <td ><input  value =""id ="no2" type="number" name="CC001"></td>
    <td id ="po2"></td>
  </tr>
  <tr>
    <td>ถ้วยน้ำจิ้ม </td>
   <td ><input  value =""id ="no3" type="number" name="CC002"></td>
    <td id ="po3"></td>
  </tr>
   <tr>
    <td>จาน </td>
   <td ><input  value =""id ="no4" type="number" name="CD001"></td>
    <td id ="po4"></td>
  </tr>
    <tr>
    <th>รวม:</th>
    <td colspan="2"id ="so1"></td>
  </tr>
</table>

<div class="panel-footer" align="center" >
<input type="hidden"  id="so8" name ="sara">
<input type="hidden"  id="so9" name ="mmmm">
<a href="index1" class="btn btn-primary">Home</a>
					<button type="submit" id="tes12" class="btn btn-primary" disabled="disabled">Submit</button>
					 <button type="reset" class="btn btn-primary">Clear</button>
        </div>
   
</form>
</div>

<script type='text/javascript'>
$(function() {

    $('#no1').keyup(function() {  
    	  $('#no2').val(0);
	        $('#no3').val(0);
	        $('#no4').val(0);
        updateTotal();
    });
     $('#no2').keyup(function() { 
    	
        updateTotal();
    });
    
    $('#no3').keyup(function() { 
    	
        updateTotal();
    });
    
    $('#no4').keyup(function() {  
        updateTotal();
    });
    
   var updateTotal = function () {
      var input1 = parseInt($('#no1').val());
      var input2 = parseInt($('#no2').val());
      var input3 = parseInt($('#no3').val());
      var input4 = parseInt($('#no4').val());
       var totals1 = parseFloat(input1*1.5) || 0;
         var totals2 = parseFloat(input2*1.5) ||0 ;
           var totals3 = parseFloat(input3*1.5) ||0 ;
            var totals4 = parseFloat(input4*1.5) ||0 ;
   
      $('#po1').text(totals1);
        $('#po2').text(totals2);
          $('#po3').text(totals3);
           $('#po4').text(totals4);
           var totals5 = parseFloat(totals1 + totals2 + totals3 + totals4) ||"" ;
           var totals61 = parseFloat(input1 + input2 + input3 + input4) ||"" ;
             $('#so1').text(totals5);
             $('#so8').val(totals5);
             $('#so9').val(totals61);
    };
  // output_total.text(total);

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
	
	$('#no1').change(function() {
      
        
	    var y1 = parseInt($('#no1').val());

	      var p1 = parseInt($('#ho1').val());

		if (y1 > p1 ) {
			 document.getElementById("tes12").disabled = true;
			 
			 
		}
		else{
			document.getElementById("tes12").disabled = false;
			
		}
		
	});
$('#no2').change(function() {
	      var y2 = parseInt($('#no2').val());
	      var p2 = parseInt($('#ho2').val());

	      
		if ( y2 > p2 ) {
			 document.getElementById("tes12").disabled = true;
			 
		}
		else{
			document.getElementById("tes12").disabled = false;
		}
		
	});
$('#no3').change(function() {
	

      var y3 = parseInt($('#no3').val());

      var p3 = parseInt($('#ho3').val());

	if ( y3 > p3) {
		 document.getElementById("tes12").disabled = true;
		 
	}
	else{
		document.getElementById("tes12").disabled = false;
	}
	
});
$('#no4').change(function() {
	

      var y4 = parseInt($('#no4').val());
  
      var p4 = parseInt($('#ho4').val());
      
	if ( y4 > p4) {
		 document.getElementById("tes12").disabled = true;
		 
	}
	else{
		document.getElementById("tes12").disabled = false;
	}
	
});
</script>
</body>



</html>