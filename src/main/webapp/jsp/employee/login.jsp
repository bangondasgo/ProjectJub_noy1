<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<jsp:include page="../Template/header.jsp"></jsp:include>

<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>

</head>
<body>

 <div class="container" style="width: 40%;" >
		<form name="login" action="login" method="post" onsubmit=" return fn();">
			<div class="panel panel-primary" style="margin-top: 15%">
				<div class="panel-heading">กรุณาป้อนรหัสประจำตัวและรหัสผ่าน</div>
				<div class="panel-body" align="center" style="background-color: #7B68EE;">
					<%
						if (result.equals("F")) {
					%>
					<div class="alert alert-danger">
						<strong>Faill ! </strong> You Login Faill !!
					</div>
					<%
						}else if(result.equals("L")){
					%>
							<div class="alert alert-success">
						<strong>Success </strong> Logout Success
					</div>
					<%} %>
				
			<img src="access/img/user-png-.png" style="margin: center"
					width="150" height="150">		
    <div class="form-group">
     <label  for="ID card" style="color: white;">User name</label> <input type="text"
							class="form-control" placeholder="Username" name="idcard">
      </div>
      
      <div class="form-group">
       <label  for="pwd" style="color: white;">Password</label> <input
				type="password" class="form-control" placeholder="Password"
							name="password">
           </div>
   
 <div class="checkbox">
						<label><input type="checkbox" name="remember" style="color: white;">
							Remember me</label>
					</div>
   
   
					<button class="w3-button w3-amber w3-round-large" style="width:30%">login</button>
			
					
	 </div>
	
    </div>
  </form>
</div>
<script type="text/javascript">
function fn(){
	if(document.login.idcard.value==""){
		alert('กรุณาใส่ ID Card');
		document.login.idcard.focus();
		return false;
	}
	if(document.login.password.value==""){
		alert('กรุณาใส่ password');
		document.login.password.focus();
		return false;
	}
}
</script>
</body>
</html>