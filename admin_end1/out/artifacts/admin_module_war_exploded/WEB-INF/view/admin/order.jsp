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
    height: 900px;
    width: 1200px;
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
    width: 320px;
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
  body{
    background-image: url('/image/yuyue.png');
    background-repeat: no-repeat;
    background-position: center center;
  }
  a:link {
    color: #009900;
  }
  a:visited {
    text-decoration: underline;
  }
  a:hover {
    text-decoration: underline;
    color: #cc0033;
  }
  a:active {
    text-decoration: underline;
    color: #D6D6D6;
    font-family: Verdana, Geneva, sans-serif;
  }
</style>
  <script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
  <SCRIPT type="text/javascript" src="/ueditor/ueditor.all.js"></SCRIPT>
  <SCRIPT type="text/javascript" src="/ueditor/ueditor.all.min.js"></SCRIPT>
  <SCRIPT type="text/javascript" src="/ueditor/lang/zh-cn/zh-cn.js"></SCRIPT>
  <script type="text/javascript">
    UE.getEditor('order', {
      autoHeightEnabled: false
    })
  </script>
</head>

<body>
<div id="box">
  <p>&nbsp;</p>
  <div id="up"> <table align="center" width="370">
    <tr>
      <td width="90"></td>
      <td width="60"></td>
        <td class="active" width="60" valign="bottom" height="36"><a href="/admin/doarticle">首页</a></td>
      <td width="60" valign="bottom" height="36"><a href="javascript:history.back(-1)">返回</a></td>
      <td width="60" valign="bottom" height="36"><a href="/admin/gotologin">退出</a></td>
    </tr>
  </table></div>
  <div id="left"></div>
  <div id="middle">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="52%" border="0" cellpadding="2" cellspacing="1">
      <tr align="center">
          <td><a href="/admin/dodaiorder" class="btn btn-success btn-block btn-sm" >预约待办</a></td>
        <td><a href="/admin/doyiorder" class="btn btn-success btn-block btn-sm" >预约已办</a></td>
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
            <td><strong>就诊时间</strong></td>
            <td><strong>预约项目</strong></td>
            <td><strong>预约医生</strong></td>
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
              <td style="text-align:left;">${yuyue.ordertime}</td>
              <td style="text-align:left;">${yuyue.lei}</td>
              <td style="text-align:left;">${yuyue.dname}</td>
              <td style="text-align:left;">${yuyue.deal}</td>
              <td><a href="/admin/dorderdelete/${yuyue.oId}">删 除</a></td>
              <td><a href="/admin/dorderview/${yuyue.oId}" >详 情</a></td>
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

