<%--
  Created by IntelliJ IDEA.
  User: ur15975@outlook.com
  Date: 2017/5/29
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    request.setCharacterEncoding("utf-8");
%>
<body>
<jsp:useBean id="student" class="com.jikexueyuan.model.Studentinfo"/>
<jsp:setProperty name="student" property="*"/>
<jsp:useBean id="studentService" class="com.jikexueyuan.service.StudentService"/>
<%
    out.print(student.getNicheng());
    out.print(student.getKcs());
    out.print(student.getXqs());
    out.print(student.getId());
    if (studentService.updateStudent(student)) {
        out.print("success");
    } else {
        out.print("fail");
    }
%>
</body>
</html>
