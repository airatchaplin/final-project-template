<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Каталог</title>


    <link rel="stylesheet" href="../../resources/css/itemShop.css">

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

        <a class="p-2 text-dark" href="/admin"><font style="vertical-align: inherit;"><font
                style="vertical-align: inherit;"> ${pageContext.request.userPrincipal.name} </font></font></a>

    </nav>
    <a class="btn btn-outline-primary" href="/logout"><font style="vertical-align: inherit;"><font
            style="vertical-align: inherit;">Выход</font></font></a>
</div>


<table>
    <tr>
        <td>
            <div class="container">

                <div class="mySlides">
                    <img src="${findUserById.image1}" style="width:100%">
                </div>

                <div class="mySlides">
                    <img src="${findUserById.image2}" style="width:100%">
                </div>


                <a class="prev" onclick="plusSlides(-1)">❮</a>
                <a class="next" onclick="plusSlides(1)">❯</a>

                <div class="row">
                    <div class="column">
                        <img class="demo cursor" src="${findUserById.image1}" style="width:100%" onclick="currentSlide(1)" alt="The Woods">
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="${findUserById.image2}" style="width:100%" onclick="currentSlide(2)" alt="Cinque Terre">
                    </div>
                </div>
            </div>
        </td>
        <td>
            <div class="item" >
            <h2>${findUserById.name}</h2><br>
            <p >Цена: ${findUserById.price} рублей</p><br>
            <p >Размер: ${findUserById.size}</p><br>
            <p >Описание: ${findUserById.description}</p><br>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                    </div>
                    <a class="bot1" href="/shop/id=${findUserById.id}"> Купить</a>
                </div>
        </div>
        </td>
    </tr>
</table>



<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var captionText = document.getElementById("caption");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        captionText.innerHTML = dots[slideIndex-1].alt;
    }
</script>











</body>
</html>