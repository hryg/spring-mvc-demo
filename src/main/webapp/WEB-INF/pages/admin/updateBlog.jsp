<%--
  Created by IntelliJ IDEA.
  User: hengrui
  Date: 2017-10-31
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <title>Spring MVC Demo 博客管理</title>
</head>
<body>
<div class="container">
    <h1>SpringMVC 博客系统-更新博客</h1>
    <hr/>
    <%--@elvariable id="blog" type="com.hryg.model.BlogEntity"--%>
    <form:form action="/admin/blogs/update" method="post" modelAttribute="blog" role="form">
        <div class="form-group">
            <label for="title">Title:</label>
            <input id="title" name="title" value="${blog.title}" type="text" class="form-control" placeholder="Enter Title:"/>
        </div>
        <div class="form-group">
            <label for="userByUserId.id">Author:</label>
            <select id="userByUserId.id" name="userByUserId.id" class="form-control">
                <c:forEach items="${userList}" var="user">
                    <c:if test="${user.id==blog.userByUserId.id}">
                        <option value="${user.id}" selected="selected">${user.nickname}, ${user.firstName} ${user.lastName}</option>
                    </c:if>
                    <c:if test="${user.id!=blog.userByUserId.id}">
                        <option value="${user.id}">${user.nickname}, ${user.firstName} ${user.lastName}</option>
                    </c:if>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="content">Content:</label>
            <textarea  id="content" name="content" rows="4" class="form-control" placeholder="Please input content.">${blog.content}</textarea>
        </div>
        <div class="form-group">
            <label for="pubDate">Publish Date:</label>
            <input id="pubDate" name="pubDate" value="<fmt:formatDate value="${blog.pubDate}" pattern="yyyy-MM-dd"/>" type="date" class="form-control"/>
        </div>
        <input type="hidden" id="id" name="id" value="${blog.id}"/>
        <div class="form-group">
            <button type="submit" class="btn btn-default btn-success">提交</button>
        </div>
    </form:form>
</div>
</body>
</html>
