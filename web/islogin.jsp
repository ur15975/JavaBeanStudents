<%@ page import="com.jikexueyuan.model.Usertable" %><%--
  Created by IntelliJ IDEA.
  User: ur15975@outlook.com
  Date: 2017/5/27
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Usertable usertable = (Usertable) session.getAttribute("user");
    if (usertable == null) {%>
        <jsp:forward page="index.jsp"></jsp:forward>
    <%}
%>

</body>
</html>
