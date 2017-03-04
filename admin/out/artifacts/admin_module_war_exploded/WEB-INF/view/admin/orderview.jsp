<%--
  Created by IntelliJ IDEA.
  User: Xue
  Date: 2017/3/2
  Time: 14:49
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
  <script type="text/javascript">
    UE.getEditor('orderview')
  </script>
  <style>
    #box{
      height: 1000px;
      width: 960px;
      margin-right: auto;
      margin-left: auto;
      background-color: #fbeed5;
    }
    #box #select{
      height: 1000px;
      width: 880px;
      margin-right: auto;
      margin-left: auto;
    }
  </style>

</head>
<body>
<div id="box">
  <div id="select">
    <a href="/admin/dodaiorder"  class="btn btn-success btn-block btn-sm">关闭</a>
    <p>&nbsp;</p>
    <table class="list">
      <tbody>
      <%--request作用域中就是requestScope，session的就是sessionScope--%>
      <c:forEach var="yuyue" items="${requestScope.yuyues}">
        <tr align="center"><h2 align="center">预约详情</h2></tr>
        <tr>
          <td>业务流水号</td>
          <td>${yuyue.oId} </td>
          <td>预约时间</td>
          <td >
              ${yuyue.time}
          </td>
        </tr>
        <tr>
          <td>就诊时间：</td>
          <td>
              ${yuyue.ordertime}
          </td>
          <td>预约项目</td>
          <td>
              ${yuyue.lei}
          </td>
        </tr>
        <tr>
          <td>病情描述：</td>
        </tr>
        <tr>
          <td colspan="4">
            <textarea name="yuyue.bing" id="orderview">${yuyue.bing}</textarea>
          </td>
        </tr>
      </c:forEach>
      </#list>
      </tbody>
    </table>
  </div>
</div>
</body>

</html>
