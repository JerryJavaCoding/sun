<%--
  Created by IntelliJ IDEA.
  User: Xue
  Date: 2017/3/8
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>编辑公告</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"><style type="text/css">
    body{
      background-color: #f0bb1e;
    }
    #box{
      background-repeat: no-repeat;
      background-position: center center;
      top:300px;
      height: 219px;
      width:500px;
      margin-right: auto;
      margin-left: auto;
      font-size: 12px;
    }

  </style>
</head>
<body>
<div id="box">
  <form action="/admin/aedit"method="post">
    <c:forEach var="announcement" items="${requestScope.announcements}">
    <input name="announcement.nId"  type="text" readonly value="${announcement.nId}">
     <br><h5 align="center">编辑公告<h5>
  <textarea name="announcement.context" style="width:470px;left:160px;height:130px;background-color:#f0bb1e;font-size: 6px">
      ${announcement.context}</textarea>
    </c:forEach>
    <p>&nbsp;</p>
    <input type="submit" class="btn btn-warning btn-block btn-sm" style="width:45px;height:30px;"value="提交"/>
    </form>
  </div>
</body>
</html>
