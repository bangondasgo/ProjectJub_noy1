 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.util.List"%>
       <%@page import="com.bru.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<jsp:include page="../Template/header.jsp"></jsp:include>
<%
		List<DetailrentBean> list = null;
		Integer a = 0;
	%>
	<%
		list = (List<DetailrentBean>) request.getSession().getAttribute("list");
	%>
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

    <div class="form-group col-md-10">
        <form class="" name = "welcome" action="#" method="post">
<input type="hidden" name="stIdcard" id="stIdcard">
<input id="myInput" style="width: 30%" align="right" type="text"
				placeholder="ค้นหา...." class="w3-input w3-border w3-light-grey">
    <table class="table table-bordered">

            <tr>
              <th align="center" >no</th>
              <th align="center" >datetime</th>
              <th align="center">id</th>
              <th align="center">ถ้วย</th>
              <th align="center">จาน</th>
              <th align="center">ชาม</th>
              <th align="center">ถ้วยน้ำจิ้ม</th>
              <th align="center">รวมรายการ</th>
             

            </tr>
            <tbody id="myTable">

<%
						for (int i = 0; i < list.size(); i++) {
					%>
            <tr >
            
              <td><%=a = a + 1%></td>
              <td><%=list.get(i).getDatedateday() + " / " +list.get(i).getSimpleyear()+ " / " +list.get(i).getDatedateyear() %></td>
              <td><%=list.get(i).getIdcard() %></td>
              <td><%=list.get(i).getCC001() %></td>
              <td><%=list.get(i).getCD001() %></td>
              <td><%=list.get(i).getCB001()%></td>
              <td><%=list.get(i).getCC002() %></td>
              <td><%=list.get(i).getAll() %></td>
            
            </tr>
 <%
						}
					%>
					</tbody>
      </table>

    </form>
</div>


      <div class="form-group col-md-1">

        </div>

  </div>
</div>
</div>
</body>
<script type="text/javascript">

$(document).ready(
		function() {
			$("#myInput")
					.on(
							"keyup",
							function() {
								var value = $(this).val()
										.toLowerCase();
								$("#myTable tr")
										.filter(
												function() {
													$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
												});});});

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