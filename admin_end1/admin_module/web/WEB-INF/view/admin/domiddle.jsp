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
  <title></title>
</head>
<style>
  #hh{
    height: 100px;
    width: 1000px;

  }
  #box{
    top:700px;
    height: 300px;
    width: 1000px;
    background-image: url('/image/back.gif');
    background-repeat: no-repeat;
    background-position: center center;
    margin-right: auto;
    margin-left: auto;
  }
  body{
    background-color: #fdbd10;
  }
  #tu{
    float:left;
    height: 400px;
    width: 1000px;

  }
</style>
<body>
<div id="hh"></div>
<div id="box" align="center">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="564"  align="center">
    <tr align="center" >
      <td height="90" align="center">
<c:forEach var="doctor" items="${requestScope.doctors}">
  <font size="4px" color="#00bfff">
  ${doctor.dname},欢迎您，点击登录进入系统主界面！</font>
    <font size="4px"><a href="/doctor/gotomain/${doctor.dId}" >登录</a>
    </font></td>
  </tr>
    </table>
</c:forEach>

</div>

</body>
</html>
