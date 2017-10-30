<%--
  Created by IntelliJ IDEA.
  User: hengrui
  Date: 2017-10-30
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <title>Spring MVC Demo 用户管理</title>
</head>
<body>
<div class="container">
    <h1>SpringMVC 博客系统-添加用户</h1>
    <hr/>
    <%--@elvariable id="user" type="com.hryg.model.UserEntity"--%>
    <form:form action="/admin/users/add" method="post" modelAttribute="user" role="form">
        <div class="form-group">
            <label for="nickname">Nickname:</label>
            <input id="nickname" name="nickname" type="text" class="form-control" placeholder="Enter Nickname:" />
        </div>
        <div class="form-group">
            <label for="firstName">FirstName:</label>
            <input id="firstName" name="firstName" type="text" class="form-control" placeholder="Enter FirstName:" />
        </div>
        <div class="form-group">
            <label for="lastName">LastName:</label>
            <input id="lastName" name="lastName" type="text" class="form-control" placeholder="Enter LastName:" />
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input id="password" name="password" type="text" class="form-control" placeholder="Enter Password:" />
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-default btn-success">提交</button>
        </div>
    </form:form>
</div>
</body>
</html>
