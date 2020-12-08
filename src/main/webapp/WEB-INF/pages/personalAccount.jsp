<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Личный кабинет</title>
    <link rel="stylesheet" href="../../resources/css/itemShop.css">
    <link rel="stylesheet" href="../../resources/css/admin.css">

    <link rel="apple-touch-icon" sizes="180x180" href="../../resources/icon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../../resources/icon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../../resources/icon/favicon-16x16.png">
    <link rel="manifest" href="../../resources/icon/site.webmanifest">
    <link rel="mask-icon" href="../../resources/icon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">

</head>
<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <div class="img__logo">
        <div class="my-0 mr-md-auto font-weight-normal">
            <img class="navLogo" src="../../resources/img/imgIndex/12.jpg" alt="" height="60px">
            <img class="navLogo" src="../../resources/img/imgIndex/13.jpg" alt="" height="60px">
            <img class="navLogo" src="../../resources/img/imgIndex/14.jpg" alt="" height="60px">
            <img class="navLogo" src="../../resources/img/imgIndex/15.jpg" alt="" height="60px">
            <img class="navLogo" src="../../resources/img/imgIndex/16.jpg" alt="" height="60px">
            <img class="navLogo" src="../../resources/img/imgIndex/17.jpg" alt="" height="60px">
            <img class="navLogo" src="../../resources/img/imgIndex/18.jpg" alt="" height="60px">

            <font style="vertical-align: inherit;"></font></div>

    </div>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="/"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Главная
            страница</font></font></a>

        <a class="p-2 text-dark" href="/shop"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Каталог</font></font></a>

        <a class="p-2 text-dark" href="/admin"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Админ</font></font></a>

        <a class="p-2 text-dark" href="/username=${pageContext.request.userPrincipal.name}"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;"> Корзина </font></font></a>

    </nav>
    <a class="btn btn-outline-primary" href="/logout"><font style="vertical-align: inherit;"><font
            style="vertical-align: inherit;">Выход</font></font></a>
</div>

<div>
<h1>Hello  ${user.username}</h1>

    <div>
        <table>
            <thead >
            <th>ID</th>
            <th>SkateboardName</th>
            <th>Size</th>
            <th>Price</th>
            </thead>
            <c:forEach items="${user.skateboard}" var="skateboard">
                <tr>
                    <td >${skateboard.id}</td>
                    <td >${skateboard.name}</td>
                    <td >${skateboard.size}</td>
                    <td >${skateboard.price}</td>

                    <td>
                        <form:form method="POST" modelAttribute="deleteItemByUser">

                            <button class="but" type="submit">Delete</button>

                        </form:form>

                    </td>

                </tr>
            </c:forEach>
        </table>
    </div>





</body>
</html>