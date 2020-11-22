<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="../../resources/css/admin.css">
    <link rel="stylesheet" href="../../resources/css/index.css">
</head>

<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <div class="img__logo">
        <div class="my-0 mr-md-auto font-weight-normal">
            <img src="../../resources/img/imgIndex/12.jpg" alt="" height="60px">
            <img src="../../resources/img/imgIndex/13.jpg" alt="" height="60px">
            <img src="../../resources/img/imgIndex/14.jpg" alt="" height="60px">
            <img src="../../resources/img/imgIndex/15.jpg" alt="" height="60px">
            <img src="../../resources/img/imgIndex/16.jpg" alt="" height="60px">
            <img src="../../resources/img/imgIndex/17.jpg" alt="" height="60px">
            <img src="../../resources/img/imgIndex/18.jpg" alt="" height="60px">
            <font style="vertical-align: inherit;"></font></div>
    </div>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="/"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Главная страница</font></font></a>

        <a class="p-2 text-dark" href="/shop"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Каталог</font></font></a>

        <a class="p-2 text-dark" href="/admin"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Админ</font></font></a>

        <a class="p-2 text-dark" href="/admin"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;"> ${pageContext.request.userPrincipal.name} </font></font></a>
    </nav>
    <a class="btn btn-outline-primary" href="/logout"><font style="vertical-align: inherit;"><font
            style="vertical-align: inherit;">Выход</font></font></a>
</div>

<div>
    <table>
        <thead>
        <th>ID</th>
        <th>UserName</th>
        <th>Password</th>
        <th>Roles</th>
        </thead>
        <c:forEach items="${allUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>
                    <c:forEach items="${user.roles}" var="role">${role.name}; </c:forEach>
                </td>
                <td>
                    <form action="${pageContext.request.contextPath}/admin" method="post">
                        <input type="hidden" name="userId" value="${user.id}"/>
                        <input type="hidden" name="action" value="delete"/>
                        <button type="submit">Delete</button>

                    </form>

                </td>

            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>