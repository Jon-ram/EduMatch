<?php
include("con_db.php");
if(isset($_POST['register'])){
    if(strlen($_POST['name']) >=1 && strlen($_POST['email']) >=1 && strlen($_POST['age']) >=1 && strlen($_POST['passwor']) >=1 && strlen($_POST['tel']) >=1){
    $name = trim($_POST['name']);
    $age = trim($_POST['age']);
    $email = trim($_POST['email']);
    $passwor = trim($_POST['passwor']);
    $tel = trim($_POST['tel']);
    $rol = "Estudiante";
    $consulta = "INSERT INTO usuario(Username,Edad,Email,Password,Telefono,Rol) VALUES ('$name','$age','$email','$passwor','$tel','$rol')";
    $resultado = mysqli_query($conex,$consulta);
   
    if ($resultado){
        ?>
        <h3 class="ok">¡Te has inscrito correctamente!</h3>
         
        <?php
    }else{
        ?>
        <h3 class="bad">¡Ups, ha ocurrido un error!</h3>
        <?php
    }
}
else{
    ?>
    <h3 class="bad">¡Por favor complete el registro!</h3>
    <?php
}
}
?>