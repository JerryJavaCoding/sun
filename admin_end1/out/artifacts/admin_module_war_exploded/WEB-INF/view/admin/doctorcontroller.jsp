<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/24
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>操作菜单</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"><style type="text/css">
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
    width: 300px;
  }
  #box #middle {
    height: 540px;
    width: 655px;
    float: left;
  }
  #box #middle_left{
    height: 540px;
    width: 200px;
    float: left;
  }
  #box #foot {
    height: 64px;
    width: 1003px;
    float: left;
  }
  body{
    background-image: url('/image/doctor1.png');
    background-repeat: no-repeat;
    background-position: center center;
  }
  a:link {
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
    text-decoration: underline;
    color: #D6D6D6;
    font-family: Verdana, Geneva, sans-serif;
  }
</style>
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
<div id="box">
  <div id="up">
    <p>&nbsp;</p>
    <table align="center" width="370">
      <tr>
        <td width="90"></td>
        <td width="60"></td>
          <td class="active" width="60" valign="center" height="34"><a href="/admin/doarticle">首页</a></td>
        <td width="60" valign="center" height="34"><a href="javascript:history.back(-1)">返回</a></td>
        <td width="60" valign="center" height="34"><a href="/admin/gotologin">退出</a></td>
      </tr>
    </table>
  </div>
  <div id="left"></div>
  <div id="middle">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table  width="62%" border="0" cellpadding="2" cellspacing="1">
      <tr align="center">
        <td width="20%"><input name="add" type="button" class="btn btn-success btn-block btn-sm" style="width:70px;height:30px;" onClick="ShopConfirm('add')" value="添加"/>
        </td>
        <td width="20%"><input name="deletet" type="button" class="btn btn-success btn-block btn-sm" style="width:70px;height:30px;" onClick="ShopConfirm('delete')" value="删除"/></td>
        <td width="20%"><input name="edit" type="button" class="btn btn-success btn-block btn-sm" style="width:70px;height:30px;" onClick="ShopConfirm('edit')" value="编辑"/></td>
        <td width="20%"><input name="select" type="button" class="btn btn-success btn-block btn-sm" style="width:70px;height:30px;" onClick="ShopConfirm('select')" value="查询"/></td>
        <td  valign="bottom">
          <a href="/admin/dodoctorlist" class="btn btn-success btn-block btn-sm" >多用户查询</a></td>
      </tr>
    </table>
    <div id="select"
         style="position: absolute; stop: 343px; left: 122px; background-image:url('/image/alter.png'); font-size: 14px; color: black; z-index: 900; border: 2px #FFCC00 solid; width: 380px; height: 230px; padding: 9px; top: 237px;">
      <div style="width: 350px; text-align: right;">
        <div
                style="background-position: right top; background-repeat: no-repeat; background-image: url('/image/close.png'); font-weight: bold; cursor: hand; font-size: 18px; color: #D6D6D6;"
                onclick="CloseShopConfirm('select')">&nbsp;&nbsp;</div>
      </div>
      <form action="/admin/dodoctorselect" method="post">
        <table class="table" align="center">
          <tr>
            <td>员工ID：</td>
            <td>
              <input type="text" name="dId"/>
            </td>
          </tr>
          <tr></tr>
          <tr>
            <td>姓名：</td>
            <td>
              <input type="text" name="dname"/>
            </td>
          </tr>
          <tr>
            <br/><br/>
            <td colspan="3" align="center">
              <table  width="60%" border="0" cellspacing="1" cellpadding="2">
                <tr>
                  <td> <input type="submit" class="btn btn-success btn-block btn-sm" value="提交"/></td>
                  <td><input type="reset" class="btn btn-success btn-block btn-sm" value="重置"/></td>
                  <td><a href="/admin/dodoctorlist" class="btn btn-success btn-block btn-sm" >返回</a></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </form>
    </div>
    <div id="delete"
         style="position: absolute; stop: 343px; left: 122px; background-image:url('/image/alter.png'); font-size: 14px; color: black; z-index: 900; border: 2px #FFCC00 solid; width: 380px; height: 220px; padding: 9px; top: 237px;">
      <div style="width: 350px; text-align: right;">
        <div
                style="background-position: right top; background-repeat: no-repeat; background-image: url('/image/close.png'); font-weight: bold; cursor: hand; font-size: 18px; color: #D6D6D6;"
                onclick="CloseShopConfirm('delete')">&nbsp;&nbsp;</div>
      </div>
      <form action="/admin/dodoctordelete">
        <table class="table" align="center">
          <tr>
            <td>员工ID：</td>
            <td>
              <input type="text" name="Id"/>
            </td>
          </tr>
          <tr>
            <td>用户名：</td>
            <td>
              <input type="text" name="name"/>
            </td>
          </tr>
          <tr>
            <td colspan="3" align="center">
              <table width="60%" border="0" cellspacing="1" cellpadding="2">
                <tr>
                  <td> <input type="submit" class="btn btn-success btn-block btn-sm" value="提交"/></td>
                  <td><input type="reset" class="btn btn-success btn-block btn-sm" value="重置"/></td>
                  <td><a href="/admin/dodoctorlist" class="btn btn-success btn-block btn-sm" >返回</a></td>
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
         style="position: absolute; stop: 343px; left: 122px; background-image:url('/image/alter.png'); font-size: 14px; color: black; z-index: 900; border: 2px #FFCC00 solid; width: 380px; height: 450px; padding: 9px; top: 200px;">
      <div style="width: 350px; text-align: right;">
        <div
                style="background-position: right top; background-repeat: no-repeat; background-image: url('/image/close.png'); font-weight: bold; cursor: hand; font-size: 18px; color: #D6D6D6;"
                onclick="CloseShopConfirm('edit')">&nbsp;&nbsp;</div>
      </div>
      <form action="/admin/dodoctoredit" method="post">
        <table class="table table-condensed" align="center">
          <tr>
            <td>员工Id：</td>
            <td>
              <input name="doctor.dId" type="text" value="${doctor.dId}"/>
            </td>
          </tr>
          <tr>
            <td>姓名：</td>
            <td>
              <input name="doctor.dname" type="text" value="${doctor.dname}"/>
            </td>
          </tr>
          <tr>
            <td>性别：</td>
            <td>
              <input name="doctor.dsex" type="radio" value="男" checked="checked"/>男
              <input name="doctor.dsex" type="radio" value="女"/>女
            </td>
          </tr>
          <tr>
            <td>科室：</td>
            <td>
              <input name="doctor.office" type="radio" value="美容" checked="checked"/>美容
              <input name="doctor.office" type="radio" value="病诊"/>病诊
            </td>
          </tr>
          <tr>
            <td>联系方式：</td>
            <td>
              <input name="doctor.dtel" type="text" value="${doctor.dtel}"/>
            </td>
          </tr>
          <tr>
            <td>年龄：</td>
            <td>
              <input name="doctor.dage" type="text" value="${doctor.dage}"/>
            </td>
          </tr>
          <tr>
            <td>工龄：</td>
            <td>
              <input name="doctor.wage" type="text" value="${doctor.wage}"/>
            </td>
          </tr>
          <tr>
            <td>住址：</td>
            <td>
              <input name="doctor.dadress" type="text" value="${doctor.dadress}" />
            </td>
          </tr>
          <tr>
            <td>密码：</td>
            <td>
              <input name="doctor.dpwd" type="text" value="${doctor.dpwd}" />
            </td>
          </tr>
          <td colspan="3" align="center">
            <table  width="60%" border="0" cellspacing="1" cellpadding="2">
              <tr>
                <td> <input type="submit" class="btn btn-success btn-block btn-sm" value="提交"/></td>
                <td><input type="reset" class="btn btn-success btn-block btn-sm" value="重置"/></td>
                <td><a href="/admin/dodoctorlist" class="btn btn-success btn-block btn-sm" >返回</a></td>
              </tr>
            </table>
          </td>
          </tr>
        </table>
      </form>
    </div>
    <div id="add"
         style="position: absolute; stop: 343px; left: 122px;background-image:url('/image/alter.png'); font-size: 14px; color: black; z-index: 900; border: 2px #FFCC00 solid; width: 366px; height: 400px; padding: 9px; top: 200px;">
      <div style="width: 350px; text-align: right;">
        <div
                style="background-position: right top; background-repeat: no-repeat; background-image: url('/image/close.png'); font-weight: bold; cursor: hand; font-size: 18px; color: #D6D6D6;"
                onclick="CloseShopConfirm('add')">&nbsp;&nbsp;</div>
      </div>
      <form action="/admin/dodoctoradd" method="post">
        <table class="table table-condensed" align="center">
          <tr>
            <td>姓名：</td>
            <td>
              <input name="doctor.dname" type="text" value="${doctor.dname}"/>
            </td>
          </tr>
          <tr>
            <td>性别：</td>
            <td>
              <input name="doctor.dsex" type="radio" value="男" checked="checked"/>男
              <input name="doctor.dsex" type="radio" value="女"/>女
            </td>
          </tr>
          <tr>
            <td>科室：</td>
            <td>
              <input name="doctor.office" type="radio" value="美容" checked="checked"/>美容
              <input name="doctor.office" type="radio" value="病诊"/>病诊
            </td>
          </tr>
          <tr>
            <td>联系方式：</td>
            <td>
              <input name="doctor.dtel" type="text" value="${doctor.dtel}"/>
            </td>
          </tr>
          <tr>
            <td>年龄：</td>
            <td>
              <input name="doctor.dage" type="text" value="${doctor.dage}"/>
            </td>
          </tr>
          <tr>
            <td>工龄：</td>
            <td>
              <input name="doctor.wage" type="text" value="${doctor.wage}"/>
            </td>
          </tr>
          <tr>
            <td>住址：</td>
            <td>
              <input name="doctor.dadress" type="text" value="${doctor.dadress}" />
            </td>
          </tr>
          <tr>
            <td>密码：</td>
            <td>
              <input name="doctor.dpwd" type="text" value="${doctor.dpwd}" />
            </td>
          </tr>

          <td colspan="3" align="center">
            <table  width="60%" border="0" cellspacing="1" cellpadding="2">
              <tr>
                <td> <input type="submit" class="btn btn-success btn-block btn-sm" value="提交"/></td>
                <td><input type="reset" class="btn btn-success btn-block btn-sm" value="重置"/></td>
                <td><a href="/admin/dodoctorlist" class="btn btn-success btn-block btn-sm" >返回</a></td>
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
            <td><strong>工号</strong></td>
            <td><strong>姓名</strong></td>
            <td><strong>性别</strong></td>
            <td><strong>科室</strong></td>
            <td><strong>年龄</strong></td>
            <td><strong>工龄</strong></td>
            <td><strong>联系方式</strong></td>
            <td><strong>地址</strong></td>
            <td><strong>密码</strong></td>
          </tr>
          <%--request作用域中就是requestScope，session的就是sessionScope--%>
          <c:forEach var="doctor" items="${requestScope.doctors}">
            <tr>
              <td style="text-align:left;">${doctor.dId}</td>
              <td style="text-align:left;">${doctor.dname}</td>
              <td style="text-align:left;">${doctor.dsex}</td>
              <td style="text-align:left;">${doctor.office}</td>
              <td style="text-align:left;">${doctor.dage}</td>
              <td style="text-align:left;">${doctor.wage}</td>
              <td style="text-align:left;">${doctor.dtel}</td>
              <td style="text-align:left;">${doctor.dadress}</td>
              <td style="text-align:left;">${doctor.dpwd}</td>
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
  hide('add');
  hide('delete');
  hide('edit');
  hide('select');
</script>
<div id="webBgLayer"
     style="position: absolute; top: 0px; left: 0px; z-index: 899; background-color: black; height: 100%; width: 100%; display: none; -moz-opacity: 0.9; filter: alpha(opacity = 50);"></div>
</body>
</html>
