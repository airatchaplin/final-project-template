<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Регистрация</title>
    <link rel="stylesheet" href="../../resources/css/login.css">
    <link rel="stylesheet" href="../../resources/css/index.css">
</head>

<body>

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
        <a class="p-2 text-dark" href="/logout"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Главная
            страница</font></font></a>


        <a class="p-2 text-dark" href="/logout"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Каталог</font></font></a>


        <a class="p-2 text-dark" href="/logout"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;">Админ</font></font></a>
    </nav>
    <a class="btn btn-outline-primary" href="/logout"><font style="vertical-align: inherit;"><font
            style="vertical-align: inherit;">Выход</font></font></a>
</div>

<div>
    <form:form method="POST" modelAttribute="userForm">
        <h1>Регистрация</h1>
        <div class="login">
            <form:input type="text" path="username" placeholder="Введите логин"
                        autofocus="true"></form:input>
            <div class="error">
                <form:errors path="username"></form:errors>
                    ${usernameError}
            </div>
        </div>
        <div class="login">
            <form:input type="password" path="password" placeholder="Введите пароль"></form:input>
        </div>
        <div class="login">
            <form:input type="password" path="passwordConfirm"
                        placeholder="Повторите пароль"></form:input>
            <div class="error">
                <form:errors path="password"></form:errors>
                    ${passwordError}
            </div>
        </div>
        <div class="butReg">
            <button type="submit">Зарегистрироваться</button>
        </div>
    </form:form>

</div>
</body>
</html>