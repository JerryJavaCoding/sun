<%--
  Created by IntelliJ IDEA.
  User: Xue
  Date: 2017/3/3
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
  <SCRIPT type="text/javascript" src="/ueditor/ueditor.all.js"></SCRIPT>
  <SCRIPT type="text/javascript" src="/ueditor/ueditor.all.min.js"></SCRIPT>
  <SCRIPT type="text/javascript" src="/ueditor/lang/zh-cn/zh-cn.js"></SCRIPT>
  <title></title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"><style type="text/css">
  #box{
    height: 1100px;
    width: 960px;
    margin-right: auto;
    margin-left: auto;
    background-color: #fbeed5;
  }
  #box #select{
    height: 1100px;
    width: 900px;
    margin-right: auto;
    margin-left: auto;
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
<div id="box">
  <div id="select">
    <p>&nbsp;</p>
    <table class="list table" align="center">
      <tbody>
      <tr align="center"><h2 align="center">个人信息</h2></tr>
      <%--request作用域中就是requestScope，session的就是sessionScope--%>
      <c:forEach var="pet" items="${requestScope.pets}">
        <tr>
          <td><strong>宠物Id</strong></td>
          <td>
            <input type="text" readonly="readonly" value="${pet.PId}"/>
          </td>
          <td>姓名：</td>
          <td><input type="text" readonly="readonly" value="${pet.tname}"/></td>
        </tr>
        <tr>
          <td>年龄：</td>
          <td >
            <input type="text" readonly="readonly" value="${pet.age}"/>
          </td>
          <td>类型：</td>
          <td><input type="text" readonly="readonly" value="${pet.identity}"/></td>
        </tr>
        <tr class="success">
          <p>&nbsp;</p>
        </tr>
      </c:forEach>
        <td align="right" width="10">
          <a href="javascript:history.back(-1)"  class="btn btn-success btn-block btn-sm">关闭</a>
        </td>
        </tr>
      </#list>
      </tbody>
    </table>
  </div>
</div>
</body>

</html>

