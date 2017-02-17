<%--
  Created xue.
  User: Administrator
  Date: 2017/2/16
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据列表</title>
</head>
<div class="table_box">
  <table class="list" border="1">
    <tbody>
    <tr>
      <td>用户id</td>
      <td>姓名</td>
      <td>性别</td>
      <td>联系方式</td>
      <td>地址</td>
      <td>邮箱</td>
      <td>密码</td>
    </tr>
    <#list userList as user>
    <tr>
      <td style="text-align:left;">${user.Id}</td>
      <td style="text-align:left;">${user.name}</td>
      <td style="text-align:left;">${user.sex}</td>
      <td style="text-align:left;">${user.tel}</td>
      <td style="text-align:left;">${user.adress}</td>
      <td style="text-align:left;">${user.email}</td>
      <td style="text-align:left;">${user.pwd}</td>
    </tr>
    </#list>
    </tbody>
  </table>
</div>
</body>
</html>
