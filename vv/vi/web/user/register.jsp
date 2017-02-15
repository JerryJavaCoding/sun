<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/14
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/user/add" method="post">
  <input name="user.name" type="text" placeholder="请输入用户名"/>
  <br><br>
  <input name="user.tel" type="text" placeholder="请输入密码"/>
  <br><br>
  <input name="user.pwd" type="text" placeholder="请输入联系方式"/>
  <br><br>
  <button type="submit">提交</button>
</form>

