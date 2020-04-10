<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/4/10
  Time: 16:34
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
    <title>ADDUSERS</title>
</head>
<body>
<div id="navi">
    <div id='naviDiv'>
        <span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;用户管理<span>&nbsp;
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;<a href="<%=path%>/users/Users_queryAllUsers.action">用户列表</a></span>&nbsp;
    </div>
</div>
<div id="tips">
</div>
<div id="mainContainer">
    <!-- 从session中获取用户集合 -->
    <strong>添加用户资料</strong>
    <br>
    <br>
    <form name="addForm" action="<%=path%>/users/Users_addUsers.action" method="post">
        <table width="400" >
            <tr>
                <td width="30%">用户名：</td>
                <td><input type="text" name="username" /></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="text" name="password" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input class="button" type="submit" value="添加"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
