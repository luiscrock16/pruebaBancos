<?php
include 'conexion.php';

$mensaje = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $codigo = $_POST["codigo_banco"];

    if (!empty($codigo)) {
        // Verificar si el banco existe antes de eliminar
        $verificar = "SELECT * FROM bancos WHERE codigo_banco = '$codigo'";
        $resultado = $conn->query($verificar);

        if ($resultado->num_rows> 0) {
            // Proceder con la eliminación
            $sql = "DELETE FROM bancos WHERE codigo_banco = '$codigo'";
            if ($conn->query($sql) === TRUE) {
                $mensaje = "✅ Banco eliminado correctamente.";
} else {
                $mensaje = "❌ Error al eliminar: ". $conn->error;
}
} else {
            $mensaje = "⚠ Error: El código ingresado no existe en la base de datos.";
}
} else {
        $mensaje = "⚠ Error: Debes ingresar un código válido.";
}
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Consultar Bancos</title>
    <link rel="stylesheet" href="./CSS/eliminar.css">
</head>
<body>
    <header>
        <h1>Eliminar Banco</h1>
        <nav>
            <ul>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="incluir.php">Incluir</a></li>
                <li><a href="modificar.php">Modificar</a></li>
                <li><a href="consultar.php">Consultar</a></li>
            </ul>
        </nav>
    </header>

    <section>
        <form action="eliminar.php" method="post" onsubmit="return confirmarEliminacion()">
            <div class="form-group">
                <label for="codigo_banco">Código del Banco a eliminar:</label>
                <input type="text" name="codigo_banco" required>
            </div>

            <button type="submit">Eliminar Banco</button>
        </form>

        <!-- Mostrar mensaje de éxito o error -->
        <p class="<?php echo (strpos($mensaje, '✅')!== false)? 'success': 'error';?>">
    <?php echo $mensaje;?>
</p>

    </section>

    <script>
        function confirmarEliminacion() {
            return confirm("⚠ ¿Estás seguro de que quieres eliminar este banco?");
}
    </script>
</body>


