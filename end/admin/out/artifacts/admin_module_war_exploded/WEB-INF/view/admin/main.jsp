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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="yyyy-MM-dd"  var="time"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>系统主页</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"><style type="text/css">
  #box {
    top:300px;
    height: 1100px;
    width: 1050px;
    margin-right: auto;
    margin-left: auto;
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
    color: #D6D6D6;
  }
  li{list-style:none;}
  body,td,th {
    color: #000000;
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
  body{
    background-image: url('/image/boder.png');
    background-repeat: no-repeat;
    background-position: center center;
  }

</style>
  <script type="text/javascript">
    function openwin() {
      window.open("/admin/gotoannounce", "newwindow", "height=250, width=550,left=500,top=300, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")

    }</script>
</head>
<body >
<div id="box">
  <div id="log"></div>
  <%-- 导航条 --%>
  <div id="about">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <ul >
      <li><a href="#"></a></li>
      <li><a href="/admin/gotomain">首页</a></li>
      <li><a href="#" onclick="openwin()">公告</a></li>
      <li><a href="http://baike.baidu.com/item/宠物店管理系统?sefr=cr">关于</a></li>
      <li><a href="/admin/gotologin">退出</a></li>
    </ul>
  </div>
  <div id="bnner">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <c:forEach var="admin" items="${requestScope.admins}">
      &nbsp;&nbsp;&nbsp;&nbsp;
      <font color="#696969" size="3px"><i> Hello,${admin.name},欢迎您 ^_^</i></font>
    </c:forEach>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <font color="#696969" size="3px"><i>现在的时间是：${time}</i></font>
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
      <p></p>

    </div>
    <div id="right">
      <div id="riboder"  class="table_box"  style="position: absolute; left: 700px; width: 385px; height: 239px; padding: 9px; top: 465px;">
        <c:forEach var="article" items="${requestScope.article}">
          <font size="5px" color="f08a27"><i>${article.title}</i></font><br/>
          &nbsp;&nbsp;<font size="3px" color="gray">${article.content}......</font>
        </c:forEach>
      </div>
      <div class="table_box"  style="position: absolute; left: 440px; width: 366px; height: 161px; padding: 9px; top: 720px;">
        <table class="list">
          <tbody>
          <%--request作用域中就是requestScope，session的就是sessionScope--%>
          <c:forEach var="article" items="${requestScope.pageList.getList()}">
            <tr class="active">
              <td colspan="2" align="center" valign="bottom">
              <td width="280" align="center" valign="bottom" style="text-align:left;"><font size="3px" color="gray">${article.title}</font></td>
              <td height="33" align="right" valign="bottom">
                <a class="more" href="/admin/doarselect/${article.aId}" >view</a></td>
            </tr>
            </tr>
          </c:forEach>
          </#list>
          </tbody>
        </table>
        <div  style="position: absolute; left: 1px; width: 364px; height: 60px; padding: 9px; top: 168px;">
          <c:set var="pageNumber" scope="request" value="${pageList.pageNumber}" />
          <c:set var="pageSize" scope="request" value="${pageList.pageSize}" />
          <c:set var="totalPage" scope="request" value="${pageList.totalPage}" />
          <c:set var="totalRow" scope="request" value="${pageList.totalRow}" />
          <jsp:include page="page.jsp" /><!--使用JSP的include标签引入分页页面-->
        </div>
      </div>
    </div>
    <div id="bottom"></div>
  </div>
</body>
</html>


