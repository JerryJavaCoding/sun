<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/27
  Time: 17:21
  To change this template use File | Settings | File Templates.
  mypet
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>用户预约</title>
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
    width: 350px;
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
    background-image: url('/image/mypet.png');
    background-repeat: no-repeat;
    background-position: center center;
  }
  a:link {
    font-size:16px;
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
    font-size:16px;
    text-decoration: underline;
    color: #D6D6D6;
    font-family: Verdana, Geneva, sans-serif;
  }

</style>
  <script type="text/javascript">
    UE.getEditor('deal', {
      autoHeightEnabled: false
      ,initialFrameHeight:200
      ,initialFrameWidth:800
    })
  </script>
  <script type="text/javascript">
    UE.getEditor('reason', {
      autoHeightEnabled: false
      ,initialFrameHeight:200
      ,initialFrameWidth:800
    })
  </script>
  <script type="text/javascript">
    UE.getEditor('cone', {
      autoHeightEnabled: false
      ,initialFrameHeight:200
      ,initialFrameWidth:800
    })
  </script>

</head>

<body>
<div id="box">此处显示  id "box"
  <div id="up">
    <p>&nbsp;</p>
    <table align="center" width="370">
      <tr>
        <td width="90"></td>
        <td width="60"></td>
       <c:forEach var="user" items="${requestScope.users}">
        <td class="active" width="60" valign="bottom"><a href="/user/gotomain/${user.Id}">首页</a></td>
         </c:forEach>
        <td width="60" valign="bottom"><a href="javascript:history.back(-1)">返回</a></td>
        <td width="60" valign="bottom"><a href="/admin/gotologin">退出</a></td>
        </tr>
    </table>
    </div>
  <div id="left"></div>
  <div id="middle">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div id="middle_select">
      <div class="table_box">
        <table class="list table table-hover">
          <tbody>
          <tr class="success">
            <td><strong>宠物编号</strong></td>
            <td><strong>宠物名</strong></td>
            <td><strong>年龄</strong></td>
            <td><strong>物种</strong></td>
            <td><strong>主人</strong></td>
          </tr>
          <%--request作用域中就是requestScope，session的就是sessionScope--%>
          <c:forEach var="pet" items="${requestScope.pets}">
            <tr>
              <td style="text-align:left;">${pet.PId}</td>
              <td style="text-align:left;">${pet.tname}</td>
              <td style="text-align:left;">${pet.age}</td>
              <td style="text-align:left;">${pet.identity}</td>
              <td style="text-align:left;">${pet.name}</td>
            </tr>
          </c:forEach>
          </#list>
          </tbody>
        </table>
      </div>
    </div>
    </div>
    <div id="middle_left"></div>



  </div>
  <div id="foot"></div>
</div>
</body>
</html>

