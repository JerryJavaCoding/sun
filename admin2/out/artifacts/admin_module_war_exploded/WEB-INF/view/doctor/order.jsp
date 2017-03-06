<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/27
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>预约功能</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"><style type="text/css">
  #box {
    height: 744px;
    width: 1003px;
    background-image: url('/image/order.png');
    margin-right: auto;
    margin-left: auto;
  }
  #box #up {
    height: 140px;
    width: 1003px;
  }
  #box #left {
    float: left;
    height: 540px;
    width: 238px;
  }
  #box #middle {
    height: 540px;
    width: 655px;
    float: left;
  }
  #box #middle_left{
    height: 540px;
    width: 110px;
    float: left;
  }
  #box #foot {
    height: 64px;
    width: 1003px;
    float: left;
  }
</style>
</head>

<body>
<div id="box">此处显示  id "box"
  <div id="up">此处显示  id "up" 的内容</div>
  <div id="left">此处显示  id "left" 的内容</div>
  <div id="middle">
    <table width="52%" border="0" cellpadding="2" cellspacing="1">
      <tr align="center">
          <td><a href="javascript:history.back(-1)" class="btn btn-success btn-block btn-sm" >上一页</a></td>
        <td><a href="/admin/gotologin" class="btn btn-success btn-block btn-sm" >退出</a></td>
      </tr>
    </table>

    <p>&nbsp;</p>
    <div id="middle_select">
      <div class="table_box">
        <table class="list table table-hover">
          <tbody>
          <tr class="success">
            <td><strong>预约用户Id</strong></td>
            <td><strong>预约用户</strong></td>
            <td><strong>宠物Id</strong></td>
            <td><strong>宠物名</strong></td>
            <td><strong>预约医生</strong></td>
            <td><strong>就诊时间</strong></td>
            <td><strong>是否处理</strong></td>
            <td><strong></strong></td>
            <td><strong></strong></td>
          </tr>
          <%--request作用域中就是requestScope，session的就是sessionScope--%>
          <c:forEach var="yuyue" items="${requestScope.yuyues}">
            <tr>
              <td style="text-align:left;">${yuyue.uid}</td>
              <td style="text-align:left;">${yuyue.name}</td>
              <td style="text-align:left;">${yuyue.PId}</td>
              <td style="text-align:left;">${yuyue.tname}</td>
              <td style="text-align:left;">${yuyue.dname}</td>
              <td style="text-align:left;">${yuyue.ordertime}</td>
              <td style="text-align:left;">${yuyue.deal}</td>
              <td><a href="/doctor/dorder/${yuyue.oId}">详情|处理</a></td>
            </tr>
          </c:forEach>
          </#list>
          </tbody>
        </table>
      </div>
    </div>
    <div id="middle_left"></div>



  </div>
  <div id="foot">此处显示  id "foot" 的内容</div>
</div>
</body>
</html>

