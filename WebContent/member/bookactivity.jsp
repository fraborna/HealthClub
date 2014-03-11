<%@page import="nju.fraborna.healthclub.model.Activity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="homepage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
#blank{
	padding-top:5%;
}
</style>
<%
	String activities = request.getAttribute("activities").toString();
	String[] activity = activities.split("\\$");
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Health Club</title>
</head>
<body>
	<div id="blank"></div>
	<div align="center">
	<h3>已制定的活动：</h3><br>
	<table border="1" width="800" cellpadding="0" cellspacing="0">
		<tr align="center">
			<th>活动编号</th>
			<th>场地</th>
			<th>日期</th>
			<th>教练</th>
			<th></th>
		</tr>
	<%
		if(activity.length>0){
			for(int i=0; i<activity.length; i++) {
				String[] activityAttr = activity[i].split("\\*");
	%>
		<tr align="center" >
			<td><%out.println(activityAttr[0]); %></td>
			<td><%=activityAttr[1] %></td>
			<td><%=activityAttr[2] %></td>
			<td><%=activityAttr[3] %></td>
			<td>
				<button id=<%="book"+i %> onclick="modify(this)">预订</button>
			</td>
		</tr>
	<%
			}
		}	
	%>
	</table>
	</div>
	<script type="text/javascript">
			function modify(obj) 
			{
				obj.innerHTML="已预订";
			}
	</script>
</body>
</html>