<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@page import="com.bru.model.UserBean"%>
    <%@page import="java.util.List"%> 
 <%UserBean bb = null;  %>
  
<%bb =(UserBean)request.getSession().getAttribute("222"); %>
<%List<UserBean> list = null; %>
<%list = (List<UserBean>)request.getSession().getAttribute("list"); %> 

<div class="w3-sidebar w3-bar-block w3-card w3-animate-left w3-purple" style="display:none; " id="mySidebar">
  <button class="w3-bar-item w3-button w3-large"
  onclick="w3_close()">Close &times;</button>
  <a href="index1"class="w3-bar-item w3-button w3-padding-24"style="font-size: 20px; "><i class="fa fa-home" style="font-size:30px"></i> หน้าแรก</a>
  <a href="Check" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;"><span class="glyphicon glyphicon-floppy-save"style="font-size:30px"></span>  เช่าภาชนะ</a>
  <a href="gotoresigter" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;"><i class="material-icons"style="font-size:30px;">person_add</i>  เพิ่มบัญชีลูกค้า</a>
  <a href="report" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;"><i class="fa fa-file-text" style="font-size:30px"></i>  สรุปรายงาน</a>
  <a href="logout" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;"><span class="glyphicon glyphicon-log-out"style="font-size:30px"></span>  ออกจากระบบ</a>
</div>
<div id="main">
<div class="w3-purple">
  <button id="openNav" class="w3-button w3-purple w3-xlarge" onclick="w3_open()">&#9776;<h6>เมนูทั้งหมด</h6></button>
  <div class="w3-container">
    <label  style="font-size: 14px; margin-left: ; ">ผู้ใช้งาน :  <%=bb.getUsername() %>      <%=bb.getGender() %> <%=bb.getFristname()%> <%=bb.getLastname() %></label>
  </div>
</div>
</div>