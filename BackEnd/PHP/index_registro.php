<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="style_registro.css">
</head>
<body>
    <div class="container">
        <h2>Registro de Usuario</h2>
        <form  method="post">
            <div class="form-group">
                <label for="name">Nombre completo:</label>
                <input type="text" id="name" name="name" required>
                
            </div>

            <div class="form-group">
                <label for="age">Edad:</label>
                <input type="number" id="age" name="age" required>
                
            </div>

            <div class="form-group">
                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" required>
                
            </div>

            <div class="form-group">
                <label for="password">Contraseña:</label>
                <div class="password-wrapper">
                    <input type="password" id="password" name="passwor" required>
                    <i id="togglePassword" class="fa fa-eye"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="tel">Teléfono:</label>
                <input type="tel" id="tel" name="tel" required pattern="[0-9]{10}" placeholder="Telefono">
            </div>
            
            <input type="button" name="register" value="Registro">
        </form>
        <?php
        include("registrar.php");
        ?>
        <p>¿Ya tienes una cuenta? <a href="login/index.php">Inicia sesión</a></p>
    </div>


    <!-- <script src="Scrip.js"></script> -->

   
</body>
</html>
