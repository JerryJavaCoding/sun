<%--
  Created by IntelliJ IDEA.
  User: xue
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
    UE.getEditor('ue')
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
      width: 900px;
      margin-right: auto;
      margin-left: auto;
    }
  </style>

</head>
<body>
<div id="box">
  <div id="select">
    <p>&nbsp;</p>
    <form action="/admin/doauthoredit" method="post">
      <h2 align="center"> 编写文章</h2>
      <table width="96%" height="125" align="center" class="table table-condensed">
        <tr>
          <td>文章编号：</td>
          <td> <input name="article.aId" type="text"  value="${article.aId}"/></td>
        </tr>
        <tr>
          <td>作者：</td>
          <td >
            <input name="article.author" type="text" value="${article.author}"/>
          </td>
          <td>题目：</td>
          <td >
            <input name="article.title" type="text" value="${article.title}"/>
          </td>
        </tr>
        <tr>
          <td>时间：</td>
          <td>
            <input name="article.time" type="text" value="${article.time}"/>
          </td>
          <td>类别：</td>
          <td>
            <input name="article.fen" type="radio" value="原创" checked="checked"/>原创
            <input name="article.fen" type="radio" value="转发"/>转发
          </td>
        </tr>
        <tr>
          <td>文章内容：</td>
        </tr>
        <tr>
          <td colspan="4">
            <textarea name="article.content" id="ue">${article.content}</textarea>
          </td>
        </tr>
        <td colspan="3" align="right">
          <table width="40%" align="right" border="0" cellspacing="1" cellpadding="2">
            <tr>
              <td> <input type="submit" class="btn btn-success btn-block btn-sm" value="提交"/></td>
              <td><input type="reset" class="btn btn-success btn-block btn-sm" value="重置"/></td>
              <td><a href="/admin/doauthorlist" class="btn btn-success btn-block btn-sm" >返回</a></td>
            </tr>
          </table>
        </td>
        </tr>
      </table>
    </form>
  </div>
</div>
</body>

</html>
