<%--
  Created by IntelliJ IDEA.
  User: ur15975@outlook.com
  Date: 2017/5/27
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main_Left</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
<a href="inputstudentinfo.jsp" target="main_right">录入学生信息</a><br/>
<a href="displaystudentinfo.jsp" target="main_right">查看学生信息</a><br/>
<a href="modifystudentinfo.jsp" target="main_right">修改学生信息</a><br/>
<a href="deletestudentinfo.jsp" target="main_right">删除学生信息</a><br/>
<a href="exitstudentinfo.jsp" target="_top">退出</a><br/>
</body>
</html>
