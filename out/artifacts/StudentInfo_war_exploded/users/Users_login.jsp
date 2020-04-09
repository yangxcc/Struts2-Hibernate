<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/4/9
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="loginForm" action="<%=path%>/users/Users_login.action" method="post">
    <div id="welcome">
        <span id="welcome-text">登&nbsp;录&nbsp;测&nbsp;试</span>
    </div>
    <div id="user-name">
        <span>用户名:</span>
        <span><input type="text" name="username"></span>
    </div>
    <div id="user-password">
        <span>密&nbsp;&nbsp;&nbsp;码:</span>
        <span><input type="password" name="password"></span>
    </div>
    <div id="button-group">
        <input type="submit" value="登录"/>
        <input type="reset"  value="重置"/>
    </div>
    <div>
        <a href="<%=path%>/users/Users_register.jsp">Register</a>
    </div>
    <div>
        <s:fielderror/> <!-- 显示表单验证的出错信息 -->
    </div>
</form>

</body>
</html>
