<%--
  Created by IntelliJ IDEA.
  User: Xue
  Date: 2017/3/3
  Time: 12:58
  To change this template use File | Settings | File Templates.
  new yuyue
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
      <tr align="center"><h2 align="center">预约信息</h2></tr>
      <%--request作用域中就是requestScope，session的就是sessionScope--%>
      <c:forEach var="yuyue" items="${requestScope.yuyues}">
        <tr>
          <td>业务流水号</td>
          <td>
            <input name="yuyue.oId" type="text" readonly="readonly" value="${yuyue.oId}"/>
          </td>
          <td><strong>用户Id：</strong></td>
          <td>${yuyue.uid}</td>
          <td>用户名：</td>
          <td>
            ${yuyue.name}</td>
          </td>
        </tr>
        <tr>
          <td>预约时间：</td>
          <td >
            ${yuyue.time}
          </td>
          <td>宠物Id：</td>
          <td>${yuyue.PId}</td>
          <td>宠物名：</td>
          <td >
            ${yuyue.tname}
          </td>
        </tr>
        <tr>
          <td>就诊时间：</td>
          <td >
           ${yuyue.ordertime}
          </td>
          <td>预约医生：</td>
          <td>
            ${yuyue.dname}
          </td>
          <td>是否处理:</td>
            <td>
                ${yuyue.deal}
            </td>
        </tr>
        <tr>
          <td>就诊原因：</td>
        </tr>
        <tr>
          <td colspan="6">
            <textarea name="yuyue.bing" id="reason">${yuyue.bing}</textarea>
          </td>
        </tr>
        <tr>
          <td>就诊处理：</td>
        </tr>
          <tr>
            <td colspan="6">
              <textarea name="yuyue.advice" id="cone"　readonly="readonly">${yuyue.adivce}</textarea>
            </td>
          </tr>
        <tr>
        <td align="right" width="10">
          <a href="javascript:history.back(-1)"  class="btn btn-success btn-block btn-sm">关闭</a>
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
