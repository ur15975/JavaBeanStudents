<%@ page import="com.jikexueyuan.model.Usertable" %>
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