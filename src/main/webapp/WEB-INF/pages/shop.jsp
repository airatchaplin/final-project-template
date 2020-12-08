<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Каталог</title>
    <link rel="stylesheet" href="../../resources/css/shop.css">
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

        <a class="p-2 text-dark" href="/username=${pageContext.request.userPrincipal.name}"><font
                style="vertical-align: inherit;"><font
                style="vertical-align: inherit;"> Корзина </font></font></a>
    </nav>
    <a class="btn btn-outline-primary" href="/logout"><font style="vertical-align: inherit;"><font
            style="vertical-align: inherit;">Выход</font></font></a>
</div>

<div class="album py-5 bg-light">
    <div class="container">
        <div class="title"><h1 class="display-3">Каталог</h1>
            <div class="row">
                <c:forEach items="${skateboards}" var="skateboards">
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <a href="/shop/id=${skateboards.id}"><img class="sk-logo" src="${skateboards.image1}" alt="" style="margin: 10px"></a>
                            <div class="card-body">
                                <h4>${skateboards.name}</h4>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                    </div>
                                    <a class="bot1" href="/shop/id=${skateboards.id}">${skateboards.price} рублей</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>


</body>
</html>