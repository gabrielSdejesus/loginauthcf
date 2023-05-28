<cfinclude template="view/Auth.cfm">

<cfif #login# EQ true>
    <cflocation url="home.cfm" addtoken="false">
</cfif>

<html lang="pt-br">
<cfapplication name="authApp" sessionManagement="Yes">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

    <script src="js/jquery3-7.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
    <link href="css/style.css" rel="stylesheet">
</head>
<body class="d-flex flex-column">
<cfinclude template="view/Navbar.cfm">
<section class="d-flex flex-column p-3 justify-content-center align-self-center sectionUnique fadeIn">
    <!---<cfdump var = #session.jwtToken#>--->
    <cfif StructKeyExists(URL, "message")>
        <cfif URL.message EQ "0">
                <p class="d-flex justify-content-center" style="font-size: 20px; color:red;">Failed to create account!</p>
        </cfif>
        <cfif URL.message EQ "1">
                <p class="d-flex justify-content-center" style='font-size: 20px; color:green;'>Account created!</p>
        </cfif>
        <cfif URL.message EQ "2">
                <p class="d-flex justify-content-center" style="font-size: 20px; color:red;">Email exists!</p>
        </cfif>
        <cfif URL.message EQ "3">
                <p class="d-flex justify-content-center" style="font-size: 20px; color:red;">Email or Password invalid!</p>
        </cfif>
        <cfif URL.message EQ "4">
                <p class="d-flex justify-content-center" style="font-size: 20px; color:red;">Failed to login!</p>
        </cfif>
            <script>
                var newURL = location.href.split("?")[0];
                window.history.replaceState({}, document.title, newURL);
            </script>
    </cfif>
    <div class="d-flex justify-content-center">
        <img src="img/icon-login-section.png" alt="Logo" width="100" height="100" class="d-inline-block align-text-top">
    </div>
    <form method="post" action="view/Login.cfm" id="loginForm">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email Address</label>
                <input type="email" class="form-control" id="email_adress_login" name="email_adress_login" placeholder="name@example.com">
            </div>
            <div class="d-flex flex-column mb-3 ">
                <div class="col-auto">
                    <label for="inputPassword6" class="col-form-label">Password</label>
                </div>
                <div class="col-auto">
                    <input type="password" id="password_login" name="password_login" class="form-control" placeholder="********" aria-labelledby="passwordHelpInline">
                </div>
            </div>
            <hr>
            <div class="d-grid gap-2 col-6 mx-auto">
                <button class="btn btn-primary buttonGo" type="submit">Sing in</button>
            </div>
    </form>
    <form method="post" action="view/Register.cfm" id="registerForm" name="registerForm">
        <div class="mb-3">
            <label class="form-label">Your Name</label>
            <input type="text" class="form-control" id="your_name" name="your_name" placeholder="Example">
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Email Address</label>
            <input type="email" class="form-control" name="email_adress_register"  id="email_adress_register" placeholder="name@example.com">
        </div>
        <div class="d-flex flex-column mb-3 ">
            <div class="col-auto">
                <label for="inputPassword6" class="col-form-label">Password</label>
            </div>
            <div class="col-auto">
                <input type="password" id="password_register" name="password" placeholder="********" class="form-control">
            </div>
            <div class="col-auto">
            <span id="passwordHelpInline" class="form-text">
              Must be 8-20 characters long.
            </span>
            </div>
            <div class="col-auto">
                <label for="inputPassword6" class="col-form-label">Confirm Password</label>
            </div>
            <div class="col-auto">
                <input type="password" id="password_confirm" name="password_confirm" placeholder="********" class="form-control">
            </div>
        </div>
        <hr>
        <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-primary buttonGo" type="submit" name="operation">Register</button>
        </div>
    </form>
    <div class="d-grid gap-2 col-6 mx-auto">
        <button class="btn btn-sm register">Register</button>
    </div>
    <div class="d-grid gap-2 col-6 mx-auto">
        <button class="btn btn-sm singIn">Sing in</button>
    </div>
</section>
</body>
<script src="js/authForm.js"></script>
</html>