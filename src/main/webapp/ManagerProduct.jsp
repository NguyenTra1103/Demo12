<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 20/9/2021
  Time: 5:49 PM
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
    <link rel="stylesheet" href="css/base.css">
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
                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="">Manager Account</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.acc.isSell == 1}">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="managerProduct">Manager Product</a>
                        </li>
                    </c:if>
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
                <c:if test="${sessionScope.acc == null}">
                    <button><a href="login.jsp">Login</a></button>

                </c:if>

                <c:if test="${sessionScope.acc != null}">
                    <p>Hello ${sessionScope.acc.user}</p>
                    <button><a href="logout">Logout</a></button>
                </c:if>
            </div>
        </div>
    </nav>

    <!--<img src="images/list.png" class="d-block w-100" alt="..." style="height: 350px">-->
</header>
<!--End header-->
<main>

   <!-- <h1>Users</h1>
    <a href="/addUser">Add User</a>-->
    <button id="addProduct">Thêm sản phẩm</button>
    <button>Xoá sản phẩm</button>
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
    <table class="table table-dark table-striped">
        <thead>
        <tr>
            <th scope="col">Chọn</th>
            <th scope="col">Id</th>
            <th scope="col" style="width: 200px">Hình ảnh</th>
            <th scope="col">Tên</th>
            <th scope="col">Mô tả</th>
            <th scope="col">Chi tiết mô tả</th>
            <th scope="col">Giá</th>
            <th scope="col">Xoá</th>
            <th scope="col">Sửa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listP}" var="u">
           <!--<tr>

                <td>${u.id}</td>
               <td> <img src="${u.img}" alt="" style="width: 200px;height: 200px"></td>
                <td>${u.name}</td>
                <td>${u.title}</td>
               <td>${u.typeProduct}</td>
                <td>${u.price}</td>


                <td><a href="editUser?id=${u.id}">Edit</a></td>
                <td><a href="deleteUser?id=${u.id}">Delete</a></td>

            </tr>-->
            <tr>
                <td><div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                    <label class="form-check-label" for="flexCheckChecked"></label></div></td>


                        <td>${u.id}</td>
                        <td> <img src="${u.img}" alt="" style="width: 200px;height: 200px"></td>
                        <td>${u.name}</td>
                        <td>${u.title}</td>
                        <td>${u.typeProduct}</td>
                        <td>${u.price}</td>


                        <td><a href="edit?id=${u.id}">Edit</a></td>
                        <td><a href="delete?pid=${u.id}">Delete</a></td>




            </tr>

        </c:forEach>
        </tbody>

    </table>

<div class="modal">
    <div class="modal_overlay"></div>

    <div class="modal_body">


        <div class="modal_inner">
        <!---Register-->

                   <form action="add" method="post">
               <!--<div class="auth-form_header">
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

               </div>-->
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
                   <button class="btn btn_primary" type="submit" value="submit">AddProduct</button>
                   <!--bang AddUser-->

                   <!--<table style="display: flex;justify-content: center;margin-top: 9px">
                       <tr>
                           <td colspan="2" ><input type="submit" value="Add User"/></td>
                       </tr>
                   </table>-->
                   </form>
               </div>


      </div>
    </div>
</main>
<script src="js/base.js"></script>
</body>
</html>
