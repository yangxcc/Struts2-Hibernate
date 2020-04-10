<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/4/9
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Login Success</title>
</head>
<body>
   你好，<%=session.getAttribute("username")%>
   <div>
       <a href="<%=path%>/users/Users_logout.action">退出账户(logout)</a>
   </div>
   <div>
       <a href="<%=path%>/users/Users_queryAllUsers.action">查询所有用户（QueryAllUsers）</a>
   </div>
   <div>
       <a href="<%=path%>/users/Users_add.jsp">新增用户（AddUsers）</a>
   </div>
   <div>
       <s:fielderror/>   <!--使用structs2中的标签库来显示出错信息-->
   </div>
</body>
</html>
