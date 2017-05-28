<%--
  Created by IntelliJ IDEA.
  User: ur15975@outlook.com
  Date: 2017/5/27
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
<form action="inputstudentinfo_result.jsp" method="post">
    <table bgcolor="#c0c0c0" align="center">
        <tr>
            <td align="center" bgcolor="green" colspan="2">
                <font color="white">录入学生信息</font>
            </td>
        </tr>
        <tr>
            <td>昵称：</td>
            <td><input type="text" size="20" name="nickname"></td>
        </tr>
        <tr>
            <td>真实姓名：</td>
            <td><input type="text" size="20" name="realname"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td>
                <input type="radio"  name="sex" value="0">男
                <input type="radio" name="sex" value="1">女
            </td>
        </tr>
        <tr>
            <td>出生日期：</td>
            <td>
                <input type="text" name="birthday" size="20">
            </td>
        </tr>
        <tr>
            <td>所学专业：</td>
            <td>
                <select name="zhuanye">
                    <option>计算机科学与技术</option>
                    <option>通信工程</option>
                    <option>电气工程</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>所学课程：</td>
            <td>
                <select name="lessons" size="4" multiple="multiple">
                    <option>计算机科学导论</option>
                    <option>数据结构</option>
                    <option>数据库原理</option>
                    <option>操作系统</option>
                    <option>计算机网络</option>
                    <option>软件工程</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>兴趣：</td>
            <td>
                <input type="checkbox" value="music" name="hobby">听音乐
                <input type="checkbox" value="novel" name="hobby">看小说
                <input type="checkbox" value="internet" name="hobby">上网
            </td>
        </tr>
        <tr>
            <td>备注：</td>
            <td>
                <textarea rows="3" cols="20" name="notes"></textarea>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="提交">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
