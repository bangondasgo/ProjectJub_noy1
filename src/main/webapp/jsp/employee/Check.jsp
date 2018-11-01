<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<jsp:include page="../Template/header.jsp"></jsp:include>
<style>
.btn {
    background-color: DodgerBlue;
    border: none;
    color: white;
    padding: 12px 16px;
    font-size: 16px;
    cursor: pointer;
}
</style>
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>

</head>

<body style="background-color: 	#DDA0DD; text-align: center;" >





	<div class="container" style="width: 50%;" >
	
		<form name="check" action="Checking" method="post" onsubmit=" return ch();">
			<div class="panel panel-primary" style="margin-top: 15%">
<div class="panel-heading" >Checking</div>
				<div class="panel-body" >
					<%
						if (result.equals("F")) {
					%>
					<div class="alert alert-danger">
						<strong>ข้อมูลสมาชิกไม่ถูกต้อง</strong>  !!
					</div>
					<%
						} else if (result.equals("L")) {
					%>
					<div class="alert alert-success">
						<strong>Success </strong> สำเร็จ
					</div>
					<%
						}
					%>

				</div>
				<br></br>
				<p>
					<span class="glyphicon glyphicon-user"
						style="font-size: 60px; color: blue;"></span>
				</p>
				<h3>ใส่รหัสบัตรประจำตัวผู้ประกอบการศูนย์อาหาร 13 หลัก</h3> <br></br>

				<div class="input-group col-lg-12" >
				<div class="col-sm-4"> </div>
     <div class="col-sm-4">
      <input  type="text" class="form-control col-sm-4" name="idcard" maxlength="13" placeholder="เลขบัตรปรพจำตัวประชาชน">
      </div>
    			<button class="btn btn-primary btn-md " type="submit">
							 <span class="glyphicon glyphicon-check"></span> Check
						</button>
						
					
				
			
				<br><br></br>
			<div class="container col-lg-12">	
			<a href="index1">
			<button class="btn" ><i class="fa fa-home" ></i> Home</button>
   </a>
  </div>
			</div>
 </div>
		</form>
	</div>



</body>
<script type="text/javascript">
function ch(){
	if(!checkID(document.check.idcard.value)){
		alert('รหัสประชาชนไม่ถูกต้อง');
		document.check.idcard.focus();
		return false;
	}
	
	
}
function checkID(id) 
{ 
if(id.length != 13) return false; 
for(i=0, sum=0; i < 12; i++) 
sum += parseFloat(id.charAt(i))*(13-i); if((11-sum%11)%10!=parseFloat(id.charAt(12))) 
return false; return true;}
</script>
</html>