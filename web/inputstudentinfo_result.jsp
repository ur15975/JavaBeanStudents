<%--
  Created by IntelliJ IDEA.
  User: ur15975@outlook.com
  Date: 2017/5/29
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="studentInfo" class="com.jikexueyuan.model.Studentinfo"/>
<jsp:setProperty name="studentInfo" property="*"/>
<jsp:useBean id="studentService" class="com.jikexueyuan.service.StudentService"/>
<%
//    out.print(studentInfo.getNicheng());
//    out.print(studentInfo.getCsrq());
//    out.print(studentInfo.getId());
//    out.print(studentInfo.getTruename());
//    out.print(studentInfo.getKcs());

    if (studentService.addStudent(studentInfo)) {
        out.print("success");
    } else {
        out.print("fail");
    }

%>
</body>
</html>
