<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/9/2021
  Time: 9:44 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
                        <a class="nav-link text-white" href="/listFood">Xem sản phẩm</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="/addUser">Kênh người bán</a>
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
                <button id ="login">Login</button>
            </div>
        </div>
    </nav>

    <img src="images/Products.png" class="d-block w-100" alt="..." style="height: 400px">
</header>
<main>
  <!--  <div class="text-center">
        <img src="images/Drinks.png" class="rounded" alt="..."style="margin-top: 30px">
    </div>-->

    <div class="container pt-5">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
             <c:forEach items="${list}" var="food">
                <div class="card p-0">
                    <div class="imgPlaceHolder">
                        <a href="detail?id=${food.id}" ><img src="${food.img}" class="card-img-top"></a>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title food-title" title="menufood" >${food.name}</h5>
                        <p class="card-text food-description" >${food.title}</p>
                        <p class="card-text food-description" >${food.price}</p>
                        <a href="/detail?id=${food.id}" class="btn btn-primary">Go somewhere</a>

                        <a href=""><i class="fas fa-shopping-cart"></i></a>

                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>

        </c:forEach>
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
<!--Modal layout-->
<div class="modal">
    <div class="modal_overlay"></div>
    <div class="modal_body">


        <!-- <div class="modal_inner">-->
        <!---Register-->
        <!--   <div class="auth-form">
               <div class="auth-form_container">
               <div class="auth-form_header">
                   <h3 class="auth-form_heading">Đăng kí</h3>
                   <span class="auth-form_switch-btn">Đăng nhập</span>
               </div>
               <div class="auth-form_form">
                   <div class="auth-form_group">
                       <input type="text" class="auth-form_input" placeholder="Tên sử dụng">
                   </div>
                   <div class="auth-form_group">
                       <input type="password" class="auth-form_input" placeholder="Mật khẩu">
                   </div>
                   <div class="auth-form_group">
                       <input type="password" class="auth-form_input" placeholder="Nhập lại mật khẩu">
                   </div>
               </div>
               <div class="auth-form_controls">
                   <button class="btn auth-form_controls_back">Trở lại</button>
                   <button class="btn btn_primary">Đăng Kí</button>

               </div>
               </div>
           </div>

   </div>-->
        <!--Het singin-->

        <div class="auth-form">
            <div class="auth-form_container">
                <div class="auth-form_header">
                    <h3 class="auth-form_heading">Đăng Nhập</h3>
                    <span class="auth-form_switch-btn">Đăng Kí</span>
                </div>
                <form method="post">
                    <div class="auth-form_form">
                        <div class="auth-form_group">
                            <p class="text-danger">${message}</p>
                            <input type="text" class="auth-form_input" placeholder="Tên sử dụng" name="user">
                        </div>
                        <div class="auth-form_group">
                            <input type="password" class="auth-form_input" placeholder="Mật khẩu" name="password">
                        </div>

                    </div>
                    <div class="auth-form_controls">
                        <button class="btn auth-form_controls_back" >Trở lại</button>
                        <button class="btn btn_primary" type="submit">Đăng Nhập</button>

                    </div>
                </form>
            </div>
        </div>

        <!---login-->
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="js/base.js"></script>

</body>
</html>