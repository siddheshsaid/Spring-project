<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="resources/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<header>
    <div class="header">
        <div class="osh-icon">
            <figure>
                <p>osh</p>
                <figcaption class="figcaption"><small>MOMENTS</small></figcaption>
            </figure>
        </div>
        <div class="links">
            <a href="#">home</a>
            <a href="##" target="_blank">categories</a>
        </div>
        <div class="sub-right-icons">
            <i class="fas fa-search"></i>
            <i class="far fa-user"></i>
            <i class="far fa-heart"></i>
            <i class="fas fa-calendar"></i>

             <select class="country-dropdown">
                            <option value="india"><img width="48" height="48" src="https://img.icons8.com/color/48/india.png" alt="india"/> India</option>
                            <option value="japan">🇯🇵 Japan</option>
                            <option value="kuwait">🇰🇼 Kuwait</option>
                        </select>
        </div>
    </div>
</header>

<h2 class="instruction"><b>welcome, please log in/create account</b></h2>
<div class="container">
    <div class="form-card login-card">
        <h3 class="login-heading"><b>log in</b></h3>
        <form action="login" method="post">
            <div class="form-group">
                <input type="text" id="username" name="lusername" placeholder="email address*" required>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="lpassword" placeholder="password*">
            </div>
            <div class="login-checkbox">
                <input type="checkbox" id="checkbox" name="checkboxlogin">
                <span class="login-checkbox1"><b>remember me</b></span>
                <a class="anchor" href="#"><b>forgot password?</b></a>
            </div>
            <button class="btn-btn-primary">Login</button><br><br>
            <p style="margin-left: 290px"><b>or</b></p><br>
            <button class="btn-btn-secondary"><i class="fa-brands fa-facebook"></i> &nbsp sign in with facebook</button>
            <button class="btn-btn-thirdly"><i class="fa-solid fa-envelope"></i> &nbsp sign in with google</button>
        </form>
       <p class="errormsg" style="color: red;">${errormessage}</p>
    </div>
    <div class="form-card register-card">
        <div class="card-header">
            <h3 class="register-heading">create an account</h3>
        </div>
        <form action="register" method="post">
            <div class="form-group">
                <input type="text" id="full-name" name="full-name" placeholder="full name*">
            </div>
            <div class="form-group">
                <input type="text" id="email" name="email" placeholder="email address*" required>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" placeholder="password*" required>
            </div>
            <div class="form-group">
                <input type="password" id="confirm-password" name="confirm-password" placeholder="confirm password*">
            </div>
            <div class="form-group">
                <input type="text" id="interests" name="interests" placeholder="interests" >
            </div>
            <div class="form-group">
                <input type="text" id="size" name="size" placeholder="preferred size" >
            </div>
            <div class="form-group">
                <input type="checkbox" id="newsletter-checkbox" name="newsletter-checkbox" value="yes">
                <span class="registration-checkbox1"><b>newsletter</b></span>
            </div>
            <div class="form-group">
                <input type="checkbox" id="agreement-checkbox" name="agreement-checkbox" value="yes">
                <span class="registration-checkbox2"><b>by registering you agree with our t&c and privacy policy</b></span>
            </div>
            <button class="btn-1">Create Account</button>
        </form>
    </div>
</div>
</body>
</html>
