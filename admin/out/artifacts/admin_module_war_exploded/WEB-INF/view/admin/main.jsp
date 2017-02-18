<%--
  Created by IntelliJ IDEA.
  User: xue
  Date: 2017/2/18
  Time: 12:14
  To change this template use File | Settings | File Templates.
  管理员主界面
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>系统页面</title>
  <meta charset="utf-8">
  <style>
    .dropbtn {
      background-color: #4CAF50;
      color: white;
      padding: 16px;
      font-size: 16px;
      border: none;
      cursor: pointer;
    }
    /*出现弹出按钮*/

    .dropdown {
      position: relative;
      display: inline-block;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    }
    /*去掉连接下划线*/

    .dropdown-content a {
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
    }
    /*竖着排列，字体黑色*/

    .dropdown-content a:hover {background-color: #f1f1f1}
    /*显示下拉内容*/
    .dropdown:hover .dropdown-content {
      display: block;
    }

    .dropdown:hover .dropbtn {
      background-color: #3e8e41;
    }
  </style>
</head>
<body>

<h2>系统主界面</h2>
<p>宠物医院售后服务管理系统</p>

<div class="dropdown">
  <button class="dropbtn">用户管理</button>
  <div class="dropdown-content">
    <a href="gotoregister">注册</a>
    <a href="gotodelete">删除</a>
    <a href="gotoselect">查询</a>
    <a href="gotoupdate">编辑</a>
  </div>
</div>

</body>
</html>



