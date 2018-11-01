<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css?family=Chakra+Petch" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<jsp:include page="../Template/header.jsp"></jsp:include>
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>
<style>

</style>

</head>
<body>
<br><br><br>
	<div class="container" style="width: 40%;">
	

		<div class="panel panel-primary">
<div class="panel-heading" style="color: white;"></div>
			<div class="panel-body" align="center"
				style="background-color: #7B68EE;">
				<img src="access/img/user-png-.png" style="margin: center"
					width="150" height="150">



				<form action="/action_page.php">
					<div class="form-group">
						<label for="idcard" style="font-family: 'Chakra+Petch';">Idcard:</label> <input type="idcard"
							class="form-control" id="idcard" placeholder="Idcard"
							name="email">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" placeholder=" password"
							name="pwd">
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="remember">
							Remember me</label>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>

		</div>
	</div>

	</div>
</body>
</html>
@RequestMapping( value="/admin1")
	public String admin1(Model model) {
		 model.addAttribute("messessError", "");
		return "admin1";
	}	
