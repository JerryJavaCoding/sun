<%--
  Created by IntelliJ IDEA.
  User: xue
  Date: 2017/2/14
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form action="/admin/dologin" method="post">
  <input name="name" type="text" placeholder="请输入用户名"/>
  <br><br>
  <input name="password" type="text" placeholder="请输入密码"/>
  <br><br>
  <button type="submit">登录</button>&nbsp;&nbsp;
  <button type="reset">重置</button>
</form>
<a href="gotoregister">注册</a>
<a href="gotoupdate">修改</a>
<a href="gotodelete">注销</a>
<a href="gotoselect">查询</a>


