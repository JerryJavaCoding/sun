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
  <title>编辑成功</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"><style type="text/css">
  body{
    background-color: #ead6cb;
  }
  #box{
    background-image: url('/image/announce.png');
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
  <p>&nbsp;</p>
  <p>&nbsp;</p>
    <c:forEach var="announcement" items="${requestScope.announcements}">
  <div name="announcement.context" style="width:470px;left:160px;height:145px;top:100px">
      <font size="4px">${announcement.context}</font></div>
    </c:forEach>
  </form>
</div>
</body>
</html>
