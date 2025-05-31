<?php
include 'conexion.php';

$mensaje = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $codigo = $_POST["codigo_banco"];
    $denominacion = $_POST["denominacion_banco"];

    if (!empty($codigo) &&!empty($denominacion)) {
        // Verificar si el banco existe antes de modificar
        $verificar = "SELECT * FROM bancos WHERE codigo_banco = '$codigo'";
        $resultado = $conn->query($verificar);

        if ($resultado->num_rows> 0) {
            // Proceder con la actualización
            $sql = "UPDATE bancos SET denominacion_banco = '$denominacion' WHERE codigo_banco = '$codigo'";
            if ($conn->query($sql) === TRUE) {
                $mensaje = "✅ Banco actualizado correctamente.";
} else {
                $mensaje = "❌ Error al actualizar: ". $conn->error;
}
} else {
            $mensaje = "⚠ Error: El código ingresado no existe en la base de datos.";
}
} else {
        $mensaje = "⚠ Error: Debes ingresar un código y una nueva denominación.";
}
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Modificar Banco</title>
    <link rel="stylesheet" href="./CSS/incluir.css">
</head>
<body>
    <header>
        <h1>Modificar Banco</h1>
        <nav>
            <ul>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="incluir.php">Incluir</a></li>
                <li><a href="eliminar.php">Eliminar</a></li>
                <li><a href="consultar.php">Consultar</a></li>
            </ul>
        </nav>
    </header>

    <section>
        <form action="modificar.php" method="post" onsubmit="return validarModificacion()">
            <div class="form-group">
                <label for="codigo_banco">Código del Banco:</label>
                <input type="text" name="codigo_banco" required>
            </div>

            <div class="form-group">
                <label for="denominacion_banco">Nueva Denominación:</label>
                <input type="text" name="denominacion_banco" required>
            </div>

            <button type="submit">Modificar Banco</button>
        </form>

        <p class="<?php echo (strpos($mensaje, '✅')!== false)? 'success': 'error';?>">
            <?php echo $mensaje;?>
        </p>
    </section>

    <script>
        function validarModificacion() {
            let codigo = document.querySelector('input[name="codigo_banco"]').value.trim();
            let denominacion = document.querySelector('input[name="denominacion_banco"]').value.trim();

            if (codigo === "" || denominacion === "") {
                alert("⚠ Por favor, completa todos los campos.");
                return false;
}

            return true;
}
    </script>
</body>
</html>
