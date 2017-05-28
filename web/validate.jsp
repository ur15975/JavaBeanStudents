<%--
  Created by IntelliJ IDEA.
  User: ur15975@outlook.com
  Date: 2017/5/27
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>validate</title>
</head>
<body>
<jsp:useBean id="user" class="com.jikexueyuan.model.Usertable"/>
<jsp:setProperty name="user" property="*"/>
<jsp:useBean id="userservice" class="com.jikexueyuan.service.UserService"/>
<%
//    user.setUsername("aa");
    out.print(user.getUsername());
    out.print(user.getPassword());
    if (userservice.valiUser(user)) {
        session.setAttribute("user",user);
%>
        <jsp:forward page="main.jsp"></jsp:forward>
    <%} else {%>
        <jsp:forward page="index.jsp"></jsp:forward>
    <%}
%>
</body>
</html>
