<%--
  Created by IntelliJ IDEA.
  User: Xue
  Date: 2017/2/25
  Time: 12:58
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
    UE.getEditor('name')
  </script>
  <style>
    #box{
      height: 1000px;
      width: 960px;
      background-image: url('/image/3.png');
      background-repeat: no-repeat;
      background-position: center center;
      margin-right: auto;
      margin-left: auto;
    }
    #box #select{
      height: 1000px;
      width: 900px;
      margin-right: auto;
      margin-left: auto;
    }
  </style>

</head>
<body>
<div id="box">
  <div id="select">
    <a href="/admin/doarticle"  class="btn btn-success btn-block btn-sm">返回</a>
    <p>&nbsp;</p>
    <table class="list">
      <tbody>
      <%--request作用域中就是requestScope，session的就是sessionScope--%>
      <c:forEach var="article" items="${requestScope.articles}">
        <tr align="center"><h2 align="center">查看文章</h2></tr>
        <tr>
          <td>作者</td>
          <td>${article.author} </td>
          <td>题目</td>
          <td >
              ${article.title}
          </td>
        </tr>
        <tr>
          <td>时间：</td>
          <td>
              ${article.time}
          </td>
          <td>类别</td>
          <td>
              ${article.fen}
          </td>
        </tr>
        <tr>
          <td>文章内容：</td>
        </tr>
        <tr>
          <td colspan="4">
            <textarea name="article.content" id="name">${article.content}</textarea>
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
