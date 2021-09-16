<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/9/2021
  Time: 3:45 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>ListFood</title>

</head>
<body>
<!---Header-->
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

    <img src="images/list.png" class="d-block w-100" alt="..." style="height: 350px">
</header>
<!--End header-->
<main>
<h1>Users</h1>
<a href="/addUser">Add User</a>
<!--
<table border="1">
    <tr>
        <th>Id</th>
        <th>Img</th>
        <th>Name</th>
        <th>Title</th>
        <th>Price</th>

        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.img}</td>
            <td>${u.name}</td>
            <td>${u.title}</td>
            <td>${u.price}</td>

            <td><a href="editUser?id=${u.id}">Edit</a></td>
            <td><a href="deleteUser?id=${u.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>-->
    <table class="table table-success table-striped">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Hình ảnh</th>
            <th scope="col">Tên</th>
            <th scope="col">Mô tả</th>
            <th scope="col">Giá</th>
            <th scope="col">Xoá</th>
            <th scope="col">Sửa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.id}</td>
                <td>${u.img}</td>
                <td>${u.name}</td>
                <td>${u.title}</td>
                <td>${u.price}</td>

                <td><a href="editUser?id=${u.id}">Edit</a></td>
                <td><a href="deleteUser?id=${u.id}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>

    </table>
</main>
</body>
</html>
