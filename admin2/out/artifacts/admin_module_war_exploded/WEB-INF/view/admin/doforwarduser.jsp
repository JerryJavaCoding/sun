<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/3
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:forEach var="user" items="${requestScope.users}">
  ${user.name},欢迎您，点击登录进入系统主界面！
  <a href="/user/gotomain/${user.Id}" >登录</a></td>
  </tr>
  </tr>
</c:forEach>

</body>
</html>
