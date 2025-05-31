<?php
include 'conexion.php';
$sql = "USE gestor_bancos";
$conn->query($sql);

$mensaje = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $codigo = $_POST["codigo_banco"];
    $denominacion = $_POST["denominacion_banco"];

    // Validación para evitar duplicados
    $verificar = "SELECT * FROM bancos WHERE codigo_banco = '$codigo'";
    $resultado = $conn->query($verificar);

    if ($resultado->num_rows> 0) {
        $mensaje = "❌ Error: El código ya existe.";
} else {
        $sql = "INSERT INTO bancos (codigo_banco, denominacion_banco) VALUES ('$codigo', '$denominacion')";
        if ($conn->query($sql) === TRUE) {
            $mensaje = "✅ Banco registrado exitosamente.";
} else {
            $mensaje = "❌ Error al registrar: ". $conn->error;
}
}
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Introducir Banco</title>
    <link rel="stylesheet" href="./CSS/incluir.css">
</head>
<body>
    <header>
        <h1>Introducir Banco</h1>
        <nav>
            <ul>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="modificar.php">Modificar</a></li>
                <li><a href="eliminar.php">Eliminar</a></li>
                <li><a href="consultar.php">Consultar</a></li>
            </ul>
        </nav>
    </header>

    <section>
        <form action="incluir.php" method="post" onsubmit="return validarInclusion()">
            <div class="form-group">
                <label for="codigo_banco">Código del Banco:</label>
                <input type="text" name="codigo_banco" required>
            </div>

            <div class="form-group">
                <label for="denominacion_banco">Denominación del Banco:</label>
                <input type="text" name="denominacion_banco" required>
            </div>

            <button type="submit">Incluir Banco</button>
        </form>

        <!-- Mostrar mensaje de éxito o error -->
        <p id="mensaje" class="<?php echo (strpos($mensaje, '✅')!== false)? 'success': 'error';?>">
            <?php echo $mensaje;?>
        </p>

    </section>

    <script>
    function validarInclusion() {
        let codigo = document.querySelector('input[name="codigo_banco"]').value.trim();
        let denominacion = document.querySelector('input[name="denominacion_banco"]').value.trim();

        if (codigo === "" || denominacion === "") {
            document.getElementById("mensaje").innerText = "⚠ Por favor, completa todos los campos.";
            return false;
}

        return true;
}
</script>

</body>

