<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/2
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>跳转页面</title>
</head>
<body>
<c:forEach var="doctor" items="${requestScope.doctors}">
  ${doctor.dname},欢迎您，点击登录进入系统主界面！
  <a href="/doctor/gotomain/${doctor.dId}" >登录</a></td>
  </tr>
  </tr>
</c:forEach>

</body>
</html>
