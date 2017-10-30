<%--
  Created by IntelliJ IDEA.
  User: hryg
  Date: 2017/10/30
  Time: 下午9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <h1>SpringMVC 博客系统-用户详情</h1>
    <hr/>
    <table class="table table-bordered table-striped">
        <tr>
            <td>ID</td>
            <td>${user.id}</td>
        </tr>
        <tr>
            <td>FirstName</td>
            <td>${user.firstName}</td>
        </tr>
        <tr>
            <td>LastName</td>
            <td>${user.lastName}</td>
        </tr>
        <tr>
            <td>Nickname</td>
            <td>${user.nickname}</td>
        </tr>
        <tr>
            <td>Password</td>
            <td>${user.password}</td>
        </tr>
    </table>
</div>
</body>
</html>
