<%--
  Created by IntelliJ IDEA.
  User: ur15975@outlook.com
  Date: 2017/5/27
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    session.removeAttribute("user");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<body>
exitstudentinfo.jsp
</body>
</html>
