<?php
$servername = "localhost";
$username = "root"; // Si no has cambiado el usuario, usa "root"
$password = ""; // En XAMPP, por defecto, no hay contraseña
$database = "gestor_bancos";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Conexión fallida: ". $conn->connect_error);
}
?>



