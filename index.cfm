<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link href="css/style.css" rel="stylesheet">
</head>
<body class="d-flex flex-column">
<cfinclude template="view/navbar.cfm">
<section class="d-flex flex-column p-3 justify-content-center align-self-center sectionUnique fadeIn">
    <div class="container-fluid d-flex justify-content-center">
        <img src="img/icon-login-section.png" alt="Logo" width="70" height="70" class="d-inline-block align-text-top">
    </div>
    <form method="post" action="view/login.cfm">
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="emailAdress" placeholder="name@example.com" required>
        </div>
        <div class="d-flex flex-column mb-3 ">
            <div class="col-auto">
                <label for="inputPassword6" class="col-form-label">Password</label>
            </div>
            <div class="col-auto">
                <input type="password" id="inputPassword6" class="form-control" aria-labelledby="passwordHelpInline" required>
            </div>
            <div class="col-auto">
        <span id="passwordHelpInline" class="form-text">
          Must be 8-20 characters long.
        </span>
            </div>
        </div>
        <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-primary buttonGo" type="submit">Sing in</button>
        </div>
    </form>
    <div class="d-grid gap-2 col-6 mx-auto">
        <button class="btn btn-outline-none"><a href="index.cfm">Register</a></button>
    </div>
</section>
</body>
</html>