<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/9/2021
  Time: 8:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">


<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />


    <link rel="stylesheet" href="css/main.css">


    <title >Hello, world!</title>

</head>
<body>

<header>
    <nav class="navbar navbar-expand-md " style="background-color: green;">
        <div class="container">
            <a class="navbar-brand text-white" href="#">Food</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="/index">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Giới thiệu</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Các món ăn
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item " href="#">Action</a></li>
                            <li><a class="dropdown-item " href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item " href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success text-white " type="submit" style="background-color: #333333">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <!--<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img  src="images/image1.jpeg" class="d-block w-100" >

                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Some representative placeholder content for the first slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img  src="images/image2.jpeg" class="d-block w-100" >

                <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <p>Some representative placeholder content for the second slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img  src="images/image3.jpeg" class="d-block w-100" >

                <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <p>Some representative placeholder content for the third slide.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>-->

</header>
<main class="container mt-3">
    <div class="row mt-3">
        <div class="col-sm-8 order-sm-1 order-2">

            <div class="col-sm-4 order-sm-2 order-1">
                 <img src="${detail.img}" class="img-detail">
            </div>

            Name: <span class="text-primary">${detail.name}</span>
            <hr>
           Title: <span class="text-primary food-title=">${detail.title}</span>
            <hr>
            Price: <span class="text-primary">${detail.price}</span>
            <hr>
           TypeProduct: <span class ="text-primary">${detail.typeProduct}</span>





        </div>



    </div>











</main>

<!--<footer class="bg-light text-center text-lg-start mt-5">

    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2021 Copyright:
        <a class="text-dark" href="https://mdbootstrap.com/"><span th:text="${site_name}">mflix</span></a>

    </div>

</footer>-->
<footer class="bg-light text-center text-white">
    <!-- Grid container -->
    <div class="container p-4 pb-0">
        <!-- Section: Social media -->
        <section class="mb-4">
            <!-- Facebook -->
            <a
                    class="btn btn-primary btn-floating m-1"
                    style="background-color: #3b5998;border-radius: 20px"
                    href="#!"
                    role="button"
            ><i class="fab fa-facebook"></i
            ></a>

            <!-- Twitter -->
            <a
                    class="btn btn-primary btn-floating m-1"
                    style="background-color: #55acee;border-radius:20px"
                    href="#!"
                    role="button"
            ><i class="fab fa-twitter-square"></i>
            </a>

            <!-- Google -->
            <a
                    class="btn btn-primary btn-floating m-1"
                    style="background-color: #dd4b39;border-radius: 20px"
                    href="#!"
                    role="button"
            ><i class="fab fa-google"></i
            ></a>

            <!-- Instagram -->
            <a
                    class="btn btn-primary btn-floating m-1"
                    style="background-color: #ac2bac;border-radius: 20px"
                    href="#!"
                    role="button"
            ><i class="fab fa-instagram"></i
            ></a>

            <!-- Linkedin -->
            <a
                    class="btn btn-primary btn-floating m-1"
                    style="background-color: #0082ca;border-radius: 20px"
                    href="#!"
                    role="button"
            ><i class="fab fa-linkedin-in"></i
            ></a>
            <!-- Github -->
            <a
                    class="btn btn-primary btn-floating m-1"
                    style="background-color: #333333;border-radius: 20px"
                    href="#!"
                    role="button"
            ><i class="fab fa-github"></i
            ></a>
        </section>
        <!-- Section: Social media -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: green">
        © 2020 Copyright:
        <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
</footer>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>
</html>
