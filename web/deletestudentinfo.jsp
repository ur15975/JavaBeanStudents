<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.jikexueyuan.model.Studentinfo" %><%--
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
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:useBean id="studentService" class="com.jikexueyuan.service.StudentService"/>
<body>
<%
    List list = studentService.queryAllStudent();
    Iterator iterator = list.iterator();
%>
<table>
    <tr>
        <td>id</td>
        <td>昵称</td>
        <td>真实姓名</td>
        <td>性别</td>
        <td>出生日期</td>
        <td>专业</td>
        <td>课程</td>
        <td>兴趣</td>
        <td>备注</td>
        <td></td>
    </tr>
    <%
        int i = 0;
        while (iterator.hasNext()) {
            Studentinfo studentinfo = (Studentinfo) iterator.next();%>
    <tr <%if (i % 2 == 0){%>bgcolor="#F0F8FF"<%} %>>
        <td><%=studentinfo.getId()%></td>
        <td><%=studentinfo.getNicheng()%></td>
        <td><%=studentinfo.getTruename()%></td>
        <td><%if (studentinfo.getXb() == 1) out.print("男");else out.print("女");%></td>
        <td><%=studentinfo.getCsrq()%></td>
        <td><%=studentinfo.getZy()%></td>
        <td><%=studentinfo.getKcs().replaceAll("&",";")%></td>
        <td><%=studentinfo.getXqs().replaceAll("&",";")%></td>
        <td><%=studentinfo.getBz()%></td>
        <td><a href="deleteonestudentinfo.jsp?id=<%=studentinfo.getId()%>">删除</a> </td>

    </tr>
    <%
            i++;
        }
    %>
</table>
</body>
</html>
