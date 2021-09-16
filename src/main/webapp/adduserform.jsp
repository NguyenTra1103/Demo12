<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/9/2021
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="user" class="entity.MainFood" scope="request">
    <jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />


    <link rel="stylesheet" href="css/main.css">
    <title>Add User Form</title>

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
                        <a class="nav-link text-white" href="/listFood">Xem Sản phẩm</a>
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
            </div>
        </div>
    </nav>

    <img src="images/user.png" class="d-block w-100" alt="..." style="height: 400px">
</header>
<main>
<a href="/listUser">ListFoodUser</a><br/>

<h1>Add New User</h1>
<!--
<form action="addUser" method="post" >
    <table>

            <td>Img:</td>
            <input type="text" name="img"/></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td>
                <input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>Title:</td>
            <td><input type="text" name="title"/></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="number" name="price"/></td>
        </tr>

        <tr>
            <td colspan="2"><input type="submit" value="Add User"/></td>
        </tr>
    </table>
</form>
-->
    <!--bang-->
    <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">Tên người bán</span>
        <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
    </div>

    <div class="input-group mb-3">
        <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2">
        <span class="input-group-text" id="basic-addon2">@example.com</span>
    </div>

    <label for="basic-url" class="form-label">Link ảnh sản phẩm</label>
    <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon3">https://example/food.png</span>
        <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
    </div>
    <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon4">Tên sản phẩm</span>
        <input type="text" class="form-control" placeholder="FoodName" aria-label="Username" aria-describedby="basic-addon1">
    </div>
    <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon5">Mô tả sản phẩm</span>
        <input type="text" class="form-control" placeholder="Description" aria-label="Username" aria-describedby="basic-addon1">
    </div>

    <div class="input-group mb-3">
        <span class="input-group-text">Giá bán VNĐ</span>
        <input type="text" class="form-control" aria-label="Amount (to the nearest VNĐ)">
        <span class="input-group-text">.00</span>
    </div>



    <div class="input-group">
        <span class="input-group-text">Chi tiết sản phẩm</span>
        <textarea class="form-control" aria-label="Description Food"></textarea>
    </div>
    <!--bang AddUser-->

    <table style="display: flex;justify-content: center;margin-top: 9px">
        <tr>
            <td colspan="2" ><input type="submit" value="Add User"/></td>
        </tr>
    </table>

    <!--end-->
</main>
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
