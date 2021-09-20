<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19/9/2021
  Time: 8:37 PM
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


        <link rel="stylesheet" href="css/base.css">


        <title >Hello, world!</title>


</head>
<body>
<!--<main>
<div class="modal">
    <div class="modal_overlay"></div>
    <div class="modal_body">-->


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
<!--
        <div class="auth-form">
            <div class="auth-form_container">
                <div class="auth-form_header">


                    <h3 class="auth-form_heading">Đăng Nhập</h3>
                    <span class="auth-form_switch-btn">Đăng Kí</span>
                </div>
                <form action="login" method="post">
                    <div class="auth-form_form">
                        <p style="color: red;">${errorString}</p>
                        <div class="auth-form_group">

                            <input type="text" class="auth-form_input" placeholder="Username" name="user" value="username" required="" autofocus="">
                        </div>
                        <div class="auth-form_group">
                            <input type="password" class="auth-form_input" placeholder="Password" name="password" value="password" required="">
                        </div>

                    </div>
                    <div class="auth-form_controls">
                        <button class="btn auth-form_controls_back" >Trở lại</button>
                        <button class="btn btn_primary" type="submit" value="submit">Đăng Nhập</button>

                    </div>
                </form>
            </div>
        </div>-->

        <!---login-->
<!--
    </div>
</div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>-->
<br>
<br>
<div class="cont">
    <form action="login" method="post">
    <div class="form sign-in">

        <h2>Welcome</h2>
        <p style="color: red;">${errorString}</p>
        <label>
            <span>Name</span>
            <input type="text" name="user" placeholder="Username" required="" autofocus="">
        </label>
        <label>
            <span>Password</span>
            <input type="password" name="pass" placeholder="Password" required="">
        </label>
        <p class="forgot-pass">Forgot password?</p>
       <!-- <button type="submit" value="submit">Sign In</button>-->
        <button class="btn btn_primary" type="submit" value="submit">Đăng Nhập</button>

    </div>
    <div class="sub-cont">
        <div class="img">
            <div class="img__text m--up">

                <h3>Don't have an account? Please Sign up!</h3>
                </div>

            <div class="img__text m--in">

                <h3>If you already has an account, just sign in.</h3>
            </div>
            <div class="img__btn">
                <span class="m--up">Sign Up</span>
                <span class="m--in">Sign In</span>
            </div>
        </div>
        <div class="form sign-up">
            <h2>Create your Account</h2>
            <label>
                <span>Name</span>
                <input type="text" name="user" placeholder="Username" required="" autofocus="" >
            </label>

            <label>
                <span>Password</span>
                <input type="password" name="pass" placeholder="Password" required="">
            </label>
            <button class="btn btn_primary" type="submit" value="submit">Đăng Kí</button>

        </div>
    </div>
    </form>
</div>

<script>
    document.querySelector('.img__btn').addEventListener('click', function() {
        document.querySelector('.cont').classList.toggle('s--signup');
    });
</script>

<!--<script src="js/base.js"></script>-->
</body>
</html>
