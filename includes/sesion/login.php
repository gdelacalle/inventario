<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Sistema de Inventario</title>


    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/style.css">
   
</head>

<body>
    <div class="container">
        <div id="login"></div>
        <div class="row justify-content-center align-items-center min-vh-100">
            <div id="login-box" class="col-12 col-md-8 col-lg-6">
                <h2 class="text-center">ESTRUCTURAS VEGA</h2>
                <p class="text-center">Ingrese su usuario y contraseña para iniciar sesión</p>


                <div id="alert">
                </div>
                <form class="row g-3 needs-validation" novalidate id="loginForm" name="loginData">


                    <div class="form-group">
                        <label for="usuario" class="form-label">Usuario</label>
                        <input type="text" id="usuario" name="usuario" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" id="password" name="password" class="form-control" autocomplete="on" required>
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Ingresar</button>
                    </div>
                </form>
                <br>
            </div>
        </div>
    </div>
    <script src="../../js/login.js"></script>   
</body>

</html>