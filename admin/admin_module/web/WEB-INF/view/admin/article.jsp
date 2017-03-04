<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/27
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/24
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>操作菜单</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"><style type="text/css">
  #box {
    height: 744px;
    width: 1003px;
    background-image: url('/image/author.png');
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
    width: 238px;
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
</style>
  <script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
  <SCRIPT type="text/javascript" src="/ueditor/ueditor.all.js"></SCRIPT>
  <SCRIPT type="text/javascript" src="/ueditor/ueditor.all.min.js"></SCRIPT>
  <SCRIPT type="text/javascript" src="/ueditor/lang/zh-cn/zh-cn.js"></SCRIPT>
  <script type="text/javascript">
    UE.getEditor('content', {
      autoHeightEnabled: false
    })
  </script>
  <script type="text/javascript">
    UE.getEditor('update', {
      autoHeightEnabled: false
    })
  </script>
  <script type="text/javascript">
    function ShopConfirm(str) {
      var ShopConfirmLayer = document.getElementById(str);
      var webBgLayer = document.getElementById("webBgLayer");
      // ShopConfirmLayer.innerHTML=str;
      ShopConfirmLayer.style.display = "";//显示内容层，显示覆盖层

      ShopConfirmLayer.style.left = parseInt((document.documentElement.scrollWidth - ShopConfirmLayer.offsetWidth) / 2)
      + document.documentElement.scrollLeft + "px";
      ShopConfirmLayer.style.top = Math
              .abs(parseInt((document.documentElement.clientHeight - ShopConfirmLayer.offsetHeight) / 2))
      + document.documentElement.scrollTop + "px"; //为内容层设置位置

      webBgLayer.style.display = "";
      webBgLayer.style.height = document.documentElement.scrollHeight + "px"; //为覆盖层设置高度
    }
    function CloseShopConfirm(ids) {
      var ShopConfirmLayer = document.getElementById(ids);
      var webBgLayer = document.getElementById("webBgLayer");
      ShopConfirmLayer.style.display = "none";
      webBgLayer.style.display = "none";
    }
    function hide(id) {
      var ids = document.getElementById(id);
      ids.style.display = 'none';
    }
  </script>
</head>

<body>
<div id="box">此处显示  id "box"
  <div id="up">此处显示  id "up" 的内容</div>
  <div id="left">此处显示  id "left" 的内容</div>
  <div id="middle">
    <p>&nbsp;</p>
    <table  width="52%" border="0" cellpadding="2" cellspacing="1">
      <tr align="center">
        <td width="20%"><input name="add" type="button" class="btn btn-success btn-block btn-sm" style="width:70px;height:30px;" onClick="ShopConfirm('add')" value="添加"/>
        </td>
        <td width="20%"><input name="deletet" type="button" class="btn btn-success btn-block btn-sm" style="width:70px;height:30px;" onClick="ShopConfirm('delete')" value="删除"/></td>
        <td width="20%"><input name="edit" type="button" class="btn btn-success btn-block btn-sm" style="width:70px;height:30px;" onClick="ShopConfirm('edit')" value="编辑"/></td>
        <td width="20%"><input name="select" type="button" class="btn btn-success btn-block btn-sm" style="width:70px;height:30px;" onClick="ShopConfirm('select')" value="查询"/></td>
        <td  valign="bottom">
          <a href="/admin/doauthorlist" class="btn btn-success btn-block btn-sm" >多用户查询</a></td>
      </tr>
    </table>
    <div id="select"
         style="position: absolute; stop: 343px; left: 122px; background: #F7ECF9; font-size: 14px; color: black; z-index: 900; border: 2px #FFCC00 solid; width: 366px; height: 230px; padding: 9px; top: 237px;">
      <div style="width: 350px; text-align: right;">
        <div
                style="background-position: right top; background-repeat: no-repeat; background-image: url('/image/close.png'); font-weight: bold; cursor: hand; font-size: 18px; color: #D6D6D6;"
                onclick="CloseShopConfirm('select')">&nbsp;&nbsp;</div>
      </div>
      <form action="/admin/doauthorselect" method="post">
        <table class="table" align="center">
          <tr></tr>
          <tr>
            <td>作者：</td>
            <td>
              <input type="text" name="author"/>
            </td>
          </tr>
          <tr>
            <td>题目：</td>
            <td>
              <input type="text" name="title"/>
            </td>
          </tr>
          <tr>
            <br/><br/>
            <td colspan="3" align="center">
              <table class="table" width="60%" border="0" cellspacing="1" cellpadding="2">
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
    <div id="delete"
         style="position: absolute; stop: 343px; left: 122px; background: #F7ECF9; font-size: 14px; color: black; z-index: 900; border: 2px #FFCC00 solid; width: 366px; height: 220px; padding: 9px; top: 237px;">
      <div style="width: 350px; text-align: right;">
        <div
                style="background-position: right top; background-repeat: no-repeat; background-image: url('/image/close.png'); font-weight: bold; cursor: hand; font-size: 18px; color: #D6D6D6;"
                onclick="CloseShopConfirm('delete')">&nbsp;&nbsp;</div>
      </div>
      <form action="/admin/doauthordelete">
        <table class="table" align="center">
          <tr>
            <td>文章编号：</td>
            <td>
              <input type="text" name="aId"/>
            </td>
          </tr>
          <tr>
            <td>题目：</td>
            <td>
              <input type="text" name="title"/>
            </td>
          </tr>
          <tr>
            <td colspan="3" align="center">
              <table class="table" width="60%" border="0" cellspacing="1" cellpadding="2">
                <tr>
                  <td> <input type="submit" class="btn btn-success btn-block btn-sm" value="提交"/></td>
                  <td><input type="reset" class="btn btn-success btn-block btn-sm" value="重置"/></td>
                  <td><a href="/admin/doauthorlist" class="btn btn-success btn-block btn-sm" >返回</a></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        </td>
        </tr>
        </table>
      </form>
    </div>
    <div id="edit"
         style="position: absolute; stop: 343px; left: 107px; background: #F7ECF9; font-size: 14px; color: black; z-index: 900; border: 2px #FFCC00 solid; width: 960px; height: 785px; padding: 9px; top: 35px;">
      <div style="width: 945px; text-align: right;">
        <div
                style="background-position: right top; background-repeat: no-repeat; background-image: url('/image/close.png'); font-weight: bold; cursor: hand; font-size: 18px; color: #D6D6D6;"
                onclick="CloseShopConfirm('edit')">&nbsp;&nbsp;</div>
      </div>
      <form action="/admin/doauthoredit" method="post">
        <h2 align="center"> 编写文章</h2>
        <table width="96%" height="125" align="center" class="table table-condensed">
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
              <textarea name="article.content" id="update"></textarea>
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
    <div id="add"
         style="position: absolute; stop: 343px; left: 107px; background: #F7ECF9; font-size: 14px; color: black; z-index: 900; border: 2px #FFCC00 solid; width: 960px; height: 785px; padding: 9px; top: 35px;">
      <div style="width: 945px; text-align: right;">
        <div
                style="background-position: right top; background-repeat: no-repeat; background-image: url('/image/close.png'); font-weight: bold; cursor: hand; font-size: 18px; color: #D6D6D6;"
                onclick="CloseShopConfirm('add')">&nbsp;&nbsp;</div>
      </div>
      <form action="/admin/doauthoradd" method="post">
        <h2 align="center"> 编写文章</h2>
        <table width="96%" height="125" align="center" class="table table-condensed">
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
              <textarea name="article.content" id="content"></textarea>
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


    <p>&nbsp;</p>
    <div id="middle_select">
      <div class="table_box">
        <table class="list table table-hover">
          <tbody>
          <tr class="success">
            <td><strong>编号</strong></td>
            <td><strong>作者</strong></td>
            <td><strong>类别</strong></td>
            <td><strong>时间</strong></td>
            <td><strong>文章题目</strong></td>
            <td><strong></strong></td>
            <td><strong></strong></td>
          </tr>
          <%--request作用域中就是requestScope，session的就是sessionScope--%>
          <c:forEach var="article" items="${requestScope.articles}">
            <tr>
              <td style="text-align:left;">${article.aId}</td>
              <td style="text-align:left;">${article.author}</td>
              <td style="text-align:left;">${article.fen}</td>
              <td style="text-align:left;">${article.time}</td>
              <td style="text-align:left;">${article.title}</td>
              <td><a href="/admin/doauthordelete/${article.aId}">删除</a></td>
              <td><a href="/admin/get/${article.aId}" class="btn btn-success btn-block btn-sm" >编辑</a></td>
            </tr>
          </c:forEach>
          </#list>
          </tbody>
        </table>
      </div>
    </div>
    <div id="middle_left"></div>



  </div>
  <div id="foot">此处显示  id "foot" 的内容</div>
</div>
<script language="javascript">
  hide('select');
  hide('delete');
  hide('edit');
  hide('add');
</script>
<div id="webBgLayer"
     style="position: absolute; top: 0px; left: 0px; z-index: 899; background-color: black; height: 100%; width: 100%; display: none; -moz-opacity: 0.9; filter: alpha(opacity = 50);"></div>
</body>
</html>

