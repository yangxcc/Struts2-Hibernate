<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QUERY</title>
</head>
<body>
	<p>Query Success!!!</p>
	
	<table width="100%" border="1">
		<col width="20%">
		<col width="30%">
		<col width="30%">
		<col width="20%">
		<tr>
			<td>序号</td>
			<td>姓名</td>
			<td>密码</td>
			<td>操作</td>
		</tr>
		<!-- 遍历开始 -->
		<s:iterator value="#session.users_list" var="user">
		<tr class="list">
			<td><s:property value="#user.uid"/></td>
			<td><a href="<%=path%>/users/Users_modify.action?uid=<s:property value="#user.uid"/>"/>
				<s:property value="#user.username"/></td>
			<td><s:property value="#user.password"/></td>
			<td><a href="<%=path%>/users/Users_deleteUsers.action?uid=<s:property value="#user.uid"/>"
				   onclick="javascript: return confirm('确定删除吗？');">删除</a></td>
		</tr>
		</s:iterator>
		<!-- 遍历结束 -->
	</table>
	
</body>
</html>