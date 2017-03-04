<%--
  Created by IntelliJ IDEA.
  User: Xue
  Date: 2017/3/3
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="yyyy-MM-dd"  var="time"/>
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
    UE.getEditor('reason', {
      autoHeightEnabled: false
      ,initialFrameHeight:300
      ,initialFrameWidth:800
    })
  </script>
  <script type="text/javascript">
    function doctorid(x) {
      //获取select的选项
      debugger;
      var sel = document.getElementById("doctorList");
      //controller中两个不同类型的医生
      var doctorList1 ="${requestScope.doctors}";
      var doctorList2 = "${requestScope.doctor}";
      //var doctorList1 = [{office:病诊, dage:34, dsex:女, wage:5, dtel:18873646578, dpwd:123456, dname:胡安华, dId:2}];
      //var doctorList2 = [{office:美容, dage:26, dsex:男, wage:1, dtel:87909284, dpwd:556677, dname:林立, dId:1}];
      //select选中的医生
      var realList;
      if ('病诊' == x) {
        realList = doctorList1;
      } else {
        realList = doctorList2;
      }
      //每次状态改变都要清空
      sel.options.length = 0;
      //将数据遍历添加进去
      console.log(realList);
      for (var i = 0; i < realList.length; i++) {
        sel.options.add(new Option(realList[i].dname, realList[i].dname));
      }

    }
  </script>
</head>
<body>
<div id="box">
  <div id="select">
    <p>&nbsp;</p>
    <c:forEach var="user" items="${requestScope.users}">
    <form action="/user/doadd/${user.Id}" method="post">
    <table class="list table" align="center">
      <tbody>
      <tr align="center"><h2 align="center">新建预约</h2></tr>
      <%--request作用域中就是requestScope，session的就是sessionScope--%>
        <tr>
          <td><strong>用户Id</strong></td>
          <td>
            <input name="yuyue.uid" type="text" readonly value="${user.Id}"/>
          </td>
          <td>姓名：</td>
          <td><input type="text" readonly value="${user.name}"/></td>
        </tr>
      </c:forEach>
        <tr>
          <td>宠物：</td>
          <td >
              <select name="yuyue.pid">
                <c:forEach var="user" items="${requestScope.userfind}">
                <option value="${user.PId}">${user.PId} ${user.tname}</option>
                </c:forEach>
              </select>
          </td>
          <td>预约项目：</td>
          <td><select name="yuyue.lei" id="project" onchange="doctorid(this.value)">
              <option value="病诊">病诊</option>
             <option value="美容">美容</option>
          </select>
          </td>
        </tr>
      <tr>
        <td>选择医生：</td>
        <td><select name="yuyue.did" id="doctorList">
           </select>

        </td>
        <td>预约时间：</td>
        <td>
          <input type="text" name="yuyue.time" readonly value="${time}"/>
        </td>
      </tr>
      <tr>
        <td>就诊时间:</td>
        <td>
          <input type="text" name="yuyue.ordertime"/>${yuyue.ordertime}
        </td>
      </tr>
        <td>病情描述:</td>
      <tr><td colspan="4">
        <textarea name="yuyue.bing" id="reason">${yuyue.bing}</textarea>
      </td>
      </tr>
      <tr>
       <td align="right" width="10">
        <a href="javascript:history.back(-1)"  class="btn btn-success btn-block btn-sm">关闭</a>
       </td>
      <td align="right" width="10">
        <input class="btn btn-success btn-block btn-sm" type="submit" value="提交"/>
      </td>
      </tr>
      </#list>
      </tbody>
    </table>
      </form>
  </div>
</div>
</body>

</html>

