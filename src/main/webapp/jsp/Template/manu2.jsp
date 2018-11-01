<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="com.bru.model.UserBean"%>
    <%@page import="java.util.List"%> 
 <%UserBean bb = null;  %>
  
<%bb =(UserBean)request.getSession().getAttribute("222"); %>
<%List<UserBean> list = null; %>
<%list = (List<UserBean>)request.getSession().getAttribute("list"); %>  
<div class="w3-sidebar w3-bar-block w3-card w3-animate-left w3-purple" style="display:none" id="mySidebar">
  <button class="w3-bar-item w3-button w3-large"
  onclick="w3_close()">Close &times;</button>
  <a href="index2" class="w3-bar-item w3-button w3-padding-24"  style="font-size: 20px; font-family: cursive;"><i class="fa fa-home" style="font-size:30px"></i>  หน้าแรก</a>
  <a href="retest" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;"><span class="glyphicon glyphicon-floppy-open"style="font-size:30px"></span>เบิกภาชนะ</a>
   <a href="retested" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;"><span class="glyphicon glyphicon-arrow-left"style="font-size:30px"></span> เบิกภาชนะย้อนหลัง</a>
   <a href="retest3" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;"><span class="glyphicon glyphicon-plus" style="font-size:30px"></span>  เพิ่มภาชนะ</a>
  <a href="retest2" class="w3-bar-item w3-button w3-padding-24" style="font-size: 20px; font-family: cursive;"><i class="fa fa-file-text" style="font-size:30px"></i>สรุปรายงาน</a>
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
