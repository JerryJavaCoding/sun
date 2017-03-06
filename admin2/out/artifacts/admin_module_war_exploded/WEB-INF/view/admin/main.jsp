<%--
  Created by IntelliJ IDEA.
  User: xue
  Date: 2017/2/18
  Time: 12:14
  To change this template use File | Settings | File Templates.
  管理员主界面
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>系统主页</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"><style type="text/css">
  #box {
    height: 1054px;
    width: 1050px;
    margin-right: auto;
    margin-left: auto;
    background-image: url('/image/bottom.png');
    background-repeat: no-repeat;
    background-position: center center;
    font-size: 12px;
  }
  #box #log {
    height: 150px;
    width: 204px;
    float: left;
    color: #399;
    background-repeat: no-repeat;
    background-position: center center;
    background-image: url('/image/logo.png');
  }
  #box #about {
    float: left;
    height: 130px;
    width: 846px;
    background-image: url('/image/bone.png');
    background-repeat: no-repeat;
    background-position: center center;
    list-style-position: inside;
    list-style-type: none;
    line-height: normal;
  }
  #box #bnner {
    height: 148px;
    width: 1050px;
    float: left;
  }
  #box #nav {
    float: left;
    height: 706px;
    width: 204px;
    background-image: url('/image/left.png');
    background-attachment: scroll;
    background-repeat: no-repeat;
    background-position: center top;
  }
  #box #content {
    float: left;
    height: 706px;
    width: 846px;
  }
  #box #bottom {
    height: 70px;
    width: 1050px;
  }
  #box #about #aboubtnt_ {
    margin-right: auto;
    margin-left: auto;
    margin-top: auto;
    margin-bottom: auto;
  }
  ul{
    width: 1000px;
    margin: auto;
    font-size: 24px;
    font-family: "Times New Roman", Times, serif;
    font-weight: bold;
  }
  ul li{float:left;width:160px;; height:40px; line-height:20px; link-style:none;}
  ul li a {color:#895300 ;display:block;text-decoration:none;}
  a:link {
    color: #CC3300;
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
    font-size: 18px;
    color: #D6D6D6;
    font-family: Verdana, Geneva, sans-serif;
  }
  li{list-style:none;}
  body,td,th {
    color: #000000;
    font-size: 12px;
  }
  #box #content #left {
    float: left;
    height: 600px;
    width: 140px;
  }
  #box #content #right {
    float: left;
    height: 600px;
    width: 706px;
  }
</style>
</head>
<body  >
<div id="box">
  <div id="log"></div>
  <%-- 导航条 --%>
  <div id="about">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <ul >
      <li><a href="#"></a></li>
      <li><a href="/admin/gotomain">首页</a></li>
      <li><a href="#">操作指南</a></li>
      <li><a href="#">关于</a></li>
      <li><a href="/admin/gotologin">退出</a></li>
    </ul>
  </div>
  <div id="bnner">
  </div>
  <%-- 操作菜单 --%>
  <div id="nav" >
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="58%" border="0" align="center" cellpadding="2" cellspacing="1">
      <tr>
        <td height="43" align="center" valign="bottom">
          <a href="/admin/douserlist" class="btn btn-warning btn-block btn-sm" >用 户 管 理</a></td>
      </tr>
      <tr>
        <td height="43" align="center" valign="bottom">
          <a href="/admin/dopetlist" class="btn btn-warning btn-block btn-sm" >宠 物 管 理</a></td>
      </tr>
      <tr>
        <td height="43" align="center" valign="bottom">
          <a href="/admin/doauthorlist" class="btn btn-warning btn-block btn-sm" >文 章 管 理</a></td>
      </tr>
      <tr>
        <td height="43" align="center" valign="bottom">
          <a href="/admin/dodaiorder" class="btn btn-warning btn-block btn-sm" >预 约 管 理</a></td>
      </tr>
      <tr>
        <td height="43" align="center" valign="bottom">
          <a href="/admin/dodoctorlist" class="btn btn-warning btn-block btn-sm" >医 生 管 理</a></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <div id="content">
    <div id="left">
      <p>此处显示  id "left" 的内容</p>

    </div>
    <div id="right">
    <div class="table_box">
      <table class="list">
        <tbody>
        <%--request作用域中就是requestScope，session的就是sessionScope--%>
        <c:forEach var="article" items="${requestScope.articles}">
          <tr class="active">
            <td colspan="2" align="center">
            <td width="280" style="text-align:left;"><h3>${article.title}</h3></td>
            <td height="20" align="right" valign="bottom">
              <a href="/admin/doarselect/${article.aId}" >查看文章</a></td>
            </tr>
          </tr>
        </c:forEach>
        </#list>
        </tbody>
      </table>
    </div>
    </div>


  </div>
  <div id="bottom">此处显示  id "bottom" 的内容</div>
</div>
</body>
</html>


