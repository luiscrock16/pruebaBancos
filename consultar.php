<?php
include 'conexion.php';

$sql = "SELECT * FROM bancos";
$resultado = $conn->query($sql);

$conn->close();
?>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Consultar Bancos</title>
    <link rel="stylesheet" href="./CSS/consultar.css">
</head>
<body>
    <header>
        <h1>Consultar Bancos</h1>
        <nav>
            <ul>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="incluir.php">Incluir</a></li>
                <li><a href="modificar.php">Modificar</a></li>
                <li><a href="eliminar.php">Eliminar</a></li>
            </ul>
        </nav>
    </header>

    <section>
        <h2>Bancos Registrados</h2>

        <table border="1">
            <tr>
                <th>ID</th>
                <th>Código del Banco</th>
                <th>Denominación</th>
            </tr>

            <?php
            if ($resultado->num_rows> 0) {
                while ($fila = $resultado->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>". $fila["idbanco"]. "</td>";
                    echo "<td>". $fila["Codigo_banco"]. "</td>";
                    echo "<td>". $fila["Denominacion_banco"]. "</td>";
                    echo "</tr>";
}
} else {
                echo "<tr><td colspan='3'>⚠ No hay bancos registrados.</td></tr>";
}
?>
        </table>
    </section>
</body>
</html>
