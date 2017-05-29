<%@ page import="com.jikexueyuan.model.Studentinfo" %><%--
  Created by IntelliJ IDEA.
  User: ur15975@outlook.com
  Date: 2017/5/29
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<jsp:useBean id="studentService" class="com.jikexueyuan.service.StudentService"/>
<jsp:useBean id="student" class="com.jikexueyuan.model.Studentinfo"/>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    if (studentService.deleteStudent(id)) {
        out.print("success");
    } else {
        out.print("fail");
    }
%>
</body>
</html>
