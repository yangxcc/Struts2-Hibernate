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
    <title>User Modify Success</title>
</head>
<body>
<div id="navi">
    <!-- 导航空白 -->
    <div id='naviDiv'>
        <span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;学生管理<span>&nbsp;
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;<a href="<%=path%>/users/Users_queryAllUsers.action">学生列表</a></span>&nbsp;
    </div>
</div>
<div id="tips">
    <!-- 导航空白 -->
</div>
<div id="mainContainer">
    <strong>修改成功，<a href="<%=path%>/users/Users_queryAllUsers.action">返回学生列表</a></strong>
    <!--数据表格空白 -->
</div>

</form>
</body>
</html>
