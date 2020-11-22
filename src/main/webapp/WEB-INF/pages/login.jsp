<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>
    <link rel="stylesheet" href="../../resources/css/login.css">
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
        <a class="p-2 text-dark" href="/logout"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Главная
            страница</font></font></a>


        <a class="p-2 text-dark" href="/logout"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Каталог</font></font></a>


        <a class="p-2 text-dark" href="/logout"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Админ</font></font></a>
    </nav>
    <a class="btn btn-outline-primary" href="/logout"><font style="vertical-align: inherit;"><font
            style="vertical-align: inherit;">Выход</font></font></a>
</div>



<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/"); %>
</sec:authorize>
<div class="logo">
    <form method="POST" action="/login">
        <h1>Вход в систему</h1>
        <div>
            <div class="login">
                <input name="username" type="text" placeholder="Введите логин"/>
            </div>

            <div class="login">
                <input name="password" type="password" placeholder="Введите пароль"/>
            </div>

            <div class="but">
                    <button type="submit">Войти</button>
                    <button type="submit"><a href="/registration">Зарегистрироваться</a></button>
            </div>
        </div>
    </form>
</div>

</body>
</html>