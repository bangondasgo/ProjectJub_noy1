<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="../Template/header.jsp"></jsp:include>
</head>
<body>
<div id="main">
<div class="w3-teal">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1 align="center">สมาชิก</h1>
  </div>
</div>

<div class="form-group row">
</div>

<!-- <img src="img_car.jpg" alt="Car" style="width:100%"> -->
<form class="form-horizontal"action="gotorrrregister" method="POST" name="gotoregister" > 
  <div class="form-group">
    <label for="idcard" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="idcard" placeholder="ปชช" name="idcard">
    </div>
  </div>
  <div class="form-group">
    <label for="inputUsername3" class="col-sm-2 control-label">Username</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="fristname" placeholder="fristname"  name="fristname">
    </div>
  
    <div class="col-sm-2">
      <input type="text" class="form-control" id="lastname" placeholder="lastname"  name ="lastname">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress3" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" id="Address" placeholder="Address" name ="address">
    </div>
  </div>
  
   <div class="form-group">
    <label for="inputtelephone" class="col-sm-2 control-label">telephone</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="telephone" placeholder="telephone" name="telephone">
    </div>
  </div>
   <div class="form-group">
    <label for="inputpassword" class="col-sm-2 control-label">password</label>
    <div class="col-sm-2">
      <input type="password" class="form-control" id="password" placeholder="password" name ="password">
    </div>
  </div>
  <div class="form-group row">
<div class="form-group col-md-3">
   </div>
<div class="form-group col-md-2">
   <div class="dropdown">
    <select name="gender" class="form-control">
							<option value="male">male</option>
							<option value="female">female</option>
						</select>
 
  </div>
</div>
</div>
 
   <div class="form-group row">
<div class="form-group col-md-3">
   </div>
<div class="form-group col-md-2">
  <div class="custom-select " style="width: 200px;">
						<select name="status" class="form-control">
							<option value="1">Admin</option>
							<option value="2">User</option>
						</select>
					</div>
					</div>
					</div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">save</button>
       <button type="reset" class="btn btn-primary">deleed</button>
    </div>
  </div>
  </form>
  </div>
</body>
</html>
