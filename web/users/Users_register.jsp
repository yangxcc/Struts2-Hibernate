<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
</head>
<body>
	<form name="registerForm" action="<%=path%>/users/Users_registerUsers.action" method="post">
		<div id="welcome">
			<span id="welcome-text">注&nbsp;册&nbsp;测&nbsp;试</span>
		</div>
		<div id="user-name">
			<span>输入用户名:</span>
			<span><input type="text" name="username"></span>
		</div>
		<div id="user-password1">
			<span>输入密码:</span>
			<span><input type="password" name="password"></span>
		</div>
		<div id="button-group">
			<input type="submit" value="注册"/>
			<input type="reset"  value="重置"/>
		</div>
	</form>
</body>
</html>