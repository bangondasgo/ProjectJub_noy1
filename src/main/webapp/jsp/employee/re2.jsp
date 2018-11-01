<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<form class="form-horizontal">
  <div class="form-group">
    <label for="inputID3" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-3">
      <input type="ID" class="form-control" id="inputId3" placeholder="ID">
    </div>
  </div>
  <div class="form-group">
    <label for="inputUsername3" class="col-sm-2 control-label">Username</label>
    <div class="col-sm-2">
      <input type="fristname" class="form-control" id="inputUsername3" placeholder="fristname">
    </div>
  
    <div class="col-sm-2">
      <input type="lastname" class="form-control" id="inputUsername3" placeholder="lastname" >
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress3" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-7">
      <input type="address" class="form-control" id="inputAddress3" placeholder="Address">
    </div>
  </div>
  
   <div class="form-group">
    <label for="inputAddress3" class="col-sm-2 control-label">telephone</label>
    <div class="col-sm-3">
      <input type="telephone" class="form-control" id="inputAddress3" placeholder="telephone">
    </div>
  </div>
  <div class="form-group row">
<div class="form-group col-md-3">
   </div>
<div class="form-group col-md-1">
   <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"> gender
    <span class="caret"></span></button>
    
    <ul class="dropdown-menu">
      <li><a href="#">male</a></li>
      <li><a href="#">female</a></li>
    </ul>
  </div>
</div>
</div>
  <div class="form-group">
    <label for="inputCall3" class="col-sm-2 control-label">password</label>
    <div class="col-sm-2">
      <input type="password" class="form-control" id="inputCall3" placeholder="password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">save</button>
       <button type="submit" class="btn btn-primary">deleed</button>
    </div>
  </div>
  
  </form>
  </div>
</body>
</html>
<!-- <label for="inputID3" class="col-sm-2 control-label">ID</label> -->