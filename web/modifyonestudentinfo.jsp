<%@ page import="java.beans.Introspector" %>
<%@ page import="com.jikexueyuan.model.Studentinfo" %><%--
  Created by IntelliJ IDEA.
  User: ur15975@outlook.com
  Date: 2017/5/29
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="studentService" class="com.jikexueyuan.service.StudentService"/>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Studentinfo studentinfo = studentService.queryOneStudent(id);
%>
<form action="modifyonestudentinfo_result.jsp" method="post">
    <table bgColor="#c0c0c0">
        <tr>
            <td align="center" bgcolor=green colspan=2><font color=white>学生信息录入</font></td>
        </tr>
        <tr>
            <td>昵称：</td>
            <td><input type="text" size=20 name="nicheng" value="<%=studentinfo.getNicheng()%>"></td>
        </tr>
        <tr>
            <td>真实姓名：</td>
            <td><input type="text" size=20 name="truename" value="<%=studentinfo.getTruename()%>"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="radio" name="xb"
                       <%
                           if (studentinfo.getXb() == 1){ %>
                                checked
                       <%}
                       %> value="1">男&nbsp;&nbsp;
                <input type="radio" name="xb"
                    <%
                           if (studentinfo.getXb() == 0){ %>
                       checked
                    <%}
                       %> value="0">女</td>
        </tr>
        <tr>
            <td>出生日期：</td>
            <td><input type="text" name="csrq" size=20 value="<%=studentinfo.getCsrq()%>"></td>
        </tr>
        <tr>
            <td>所学专业：</td>
            <td><select name="zy">
                <option <%
                    if (studentinfo.getZy().equals("计算机科学与技术")) {
                        %>selected<%
                    }
                %>>计算机科学与技术</option>

                <option <%
                    if (studentinfo.getZy().equals("通信工程")) {
                        %>selected<%
                    }
                %>>通信工程</option>

                <option <%
                    if (studentinfo.getZy().equals("电气工程")) {
                        %>selected<%
                    }
                %>>电气工程</option>

            </select></td>
        </tr>
        <tr>
            <td>所学课程：</td>
            <td><select name="kc" size=2 multiple="multiple">
                <option <%
                    if (studentinfo.getKcs().indexOf("计算机导论") != -1) {
                        %>selected<%
                    }
                %>>计算机导论</option>
                <option <%
                    if (studentinfo.getKcs().indexOf("数据结构") != -1) {
                        %>selected<%
                    }
                %>>数据结构</option>
                <option <%
                    if (studentinfo.getKcs().indexOf("数据库原理") != -1) {
                        %>selected<%
                    }
                %>>数据库原理</option>
                <option <%
                    if (studentinfo.getKcs().indexOf("操作系统") != -1) {
                        %>selected<%
                    }
                %>>操作系统</option>
                <option <%
                    if (studentinfo.getKcs().indexOf("计算机网络") != -1) {
                        %>selected<%
                    }
                %>>计算机网络</option>
                <option <%
                    if (studentinfo.getKcs().indexOf("软件工程") != -1) {
                        %>selected<%
                    }
                %>>软件工程</option>


                <%--<option>计算机导论</option>--%>
                <%--<option>数据结构</option>--%>
                <%--<option>数据库原理</option>--%>
                <%--<option>操作系统</option>--%>
                <%--<option>计算机网络</option>--%>
                <%--<option>软件工程</option>--%>
            </select></td>
        </tr>
        <tr>
            <td>兴趣</td>
            <td><input type="checkbox" value="music" name="xq" <%
                if (studentinfo.getXqs().indexOf("music") != -1){
                    %>checked="checked"<%
                }
            %>>听音乐&nbsp;
            <input type="checkbox" value="book" name="xq" <%
                if (studentinfo.getXqs().indexOf("book") != -1){
                    %>checked="checked"<%
                }
            %>>看小说&nbsp;
            <input type="checkbox" value="web" name="xq" <%
                if (studentinfo.getXqs().indexOf("web") != -1){
                    %>checked="checked"<%
                }
            %>>上网&nbsp;
                <%--<input type="checkbox" value="book" name="xq">看小说&nbsp;--%>
                <%--<input type="checkbox" value="web" name="xq">上网&nbsp;</td>--%>
        </tr>
        <tr valign="top">
            <td>备注</td>
            <td><textarea rows=3 cols=20 name="bz"><%
                out.print(studentinfo.getBz());
            %></textarea></td>
        </tr>
        <tr ><td align="center" colspan="2" >
            <input type="hidden" name="id" value="<%=studentinfo.getId()%>">
            <input type="submit"  value="提交">&nbsp;&nbsp;
            <input type="reset"  value="重置"></td></tr>
    </table>

</form>
</body>
</html>
