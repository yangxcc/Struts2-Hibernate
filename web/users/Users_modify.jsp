<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/4/10
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>User Modify</title>
</head>
<body>
<form name="modifyFrom" action="<%=path%>/users/Users_save.action" method="post">

    <span>用户id:</span>
    <span><input type="text" name="uid" value='<s:property value="#session.modify_users.uid"/>' readonly="readonly"></span>

    <span>用户名:</span>
    <span><input type="text" name="username" value='<s:property value="#session.modify_users.username"/>'></span>

    <span>密码:</span>
    <span><input type="text" name="password" value='<s:property value="#session.modify_users.password"/>'></span>

    <input type="submit" value="确定"/>
    <input type="reset"  value="重置"/>

</form>
</body>
</html>
