<%--
  Created by xue.
  User: Administrator
  Date: 2017/2/14
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/user/doupdate" method="post">
  <input name="user.Id" type="text"value="${user.Id}" placeholder="请输入用户名id"/>
  <input name="user.name" type="text"value="${user.name}" placeholder="请输入用户名"/>
  <input name="user.pwd" type="text"value="${user.pwd}" placeholder="请输入密码"/>
  <input type="submit">提交</input>
</form>

