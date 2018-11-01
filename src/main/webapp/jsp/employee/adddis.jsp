<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <jsp:include page="../Template/header.jsp"></jsp:include> 
</head>

<body>
		<form name="add" action="adddiss" method="post">
			<div class="form-group">
    <label for="idcard" class="col-sm-2 control-label">รหัสภาชนะ</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="CID"  name="CID"  >
    </div>
  </div>
  <div class="form-group">
    <label for="idcard" class="col-sm-2 control-label">เพิ่ม</label>
    <div class="col-sm-4">
      <input type="number" class="form-control" id="Add"  name="Add"  >
    </div>
  </div>
  <div class="form-group">
    <label for="idcard" class="col-sm-2 control-label">หาย</label>
    <div class="col-sm-4">
      <input type="number" class="form-control" id="Dis"  name="Dis"  >
    </div>
  </div>
  <div class="form-group">
    <label for="idcard" class="col-sm-2 control-label">ยอดเดิม</label>
    <div class="col-sm-4">
      <input type="number" class="form-control" id="Balance"  name="Balance"  >
    </div>
  </div>	<button type="submit" id="tes12" class="btn btn-primary" >Submit</button>
					 <button type="reset" class="btn btn-primary">Clear</button>
			
			
</form>
</body>
<script>
</script>
</html>