<%--
  Created by IntelliJ IDEA.
  User: xue
  Date: 2017/2/14
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  <title>登录界面</title>
  <meta charset="utf-8">
</head>
<style>
  body
  {
    background-image:url('/image/login.png');
    background-repeat: no-repeat;
    background-position:center;
    background-attachment:fixed;
  }
</style>
<div style="width:67%;text-align:right">
  <form action="/admin/tologin" method="post">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
      <b>用户名：</b><input name="name" type="text" class="bg-warning" />
      <br><br>
    </p>
    <p>
      <b> 密码：</b><input name="password" type="text" class="bg-warning"/>
      <br><br>
    </p>
    <p>
      <input name="person" type="radio" class="bg-warning"value="用户"checked="checked"/>用户
      <input name="person" type="radio" class="bg-warning" value="管理员"/>管理员
      <input name="person" type="radio" class="bg-warning"value="医生"/>医生
      <br><br>
    </p>
    <button type="submit" class="btn btn-success" >登录</button>&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="reset" class="btn btn-success">重置</button>
  </form>
</div>

</body>
</html>







