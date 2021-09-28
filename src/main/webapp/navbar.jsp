<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/9/2021
  Time: 8:06 PM
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/main.css">
    <!-- <link rel="stylesheet" href="css/base.css">-->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.2/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8"  src="https://cdn.datatables.net/1.11.2/js/jquery.dataTables.js"></script>


    <title>VNFood</title>

</head>

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
                <!-- <button id="login">Login</button>-->
               <!-- <button><a href="login.jsp">Login</a></button>-->
                <c:if test="${sessionScope.acc == null}">
                    <!--<button id="login" type="button" class="guest btn btn-primary ms-3" data-bs-toggle="modal" data-bs-target="#modal-login"><span><a href="login.jsp">Login</a></span></button>-->
                    <button class="btn btn-outline-success text-white" type="button" style="background-color: #333333; text-decoration: none"><span><a href="login.jsp" style="text-decoration: none; color: white">Login</a></span></button>

                </c:if>

                <c:if test="${sessionScope.acc != null}">
                    <p>Hello ${sessionScope.acc.user}</p>
                    <!--<button id="login" type="button" class="guest btn btn-primary ms-3" data-bs-toggle="modal" data-bs-target="#modal-login"><span><a href="logout">Logout</a></span></button>-->
                    <button class="btn btn-outline-success  text-white " type="button" style="background-color: #333333"><span><a href="logout" style="text-decoration: none; color: white">Login</a></span></button>

                </c:if>

            </div>
        </div>
    </nav>


</header>
<body>

</body>
</html>
