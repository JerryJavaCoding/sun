<%--
  Created by IntelliJ IDEA.
  User: Xue
  Date: 2017/3/3
  Time: 17:36
  To change this template use File | Settings | File Templates.
  个人信息
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>医生信息</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"><style type="text/css">
  #box{
    height: 400px;
    width: 600px;
    margin-right: auto;
    margin-left: auto;
  }
  #box #select{
    height: 400px;
    width: 600px;
    margin-right: auto;
    margin-left: auto;
  }
  body{
    background-color: #f08a27;
  }
</style>
</head>
<body>
<div id="box">
  <div id="select">
    <p>&nbsp;</p>
    <table align="left">
      <tbody>
      <%--request作用域中就是requestScope，session的就是sessionScope--%>
      <c:forEach var="doctor" items="${requestScope.doctors}">
        <tr>
          <td height="48">姓名：</td>
          <td><input type="text" class="form-control" readonly value="${doctor.dname}"/></td>
        </tr>
        <tr>
          <td>性别：</td>
          <td >
            <input type="text" class="form-control" readonly value="${doctor.dsex}"/>
          </td>
        </tr>
        <tr>
          <td height="48">联系方式：</td>
          <td><input type="text" class="form-control" readonly value="${doctor.dtel}"/></td>
        </tr>
        <tr>
          <td>邮箱：</td>
          <td >
            <input type="text" class="form-control" readonly value="${doctor.dage}"/>
          </td>
        </tr>
        <tr>
          <td height="48">住址：</td>
          <td>
            <input type="text"  class="form-control"readonly="readonly" value="${doctor.adress}"/>
          </td>
        </tr>
        <tr>
          <td>工龄：</td>
          <td>
            <input type="text" class="form-control" readonly value="${doctor.wage}"/>
          </td>
        </tr>
        <tr>
        <tr>
          <td height="48">科室：</td>
          <td>
            <input type="text" class="form-control"readonly="readonly" value="${doctor.office}"/>
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

