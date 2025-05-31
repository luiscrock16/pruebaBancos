<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Bancos</title>
    <link rel="stylesheet" href="./CSS/estilos.css">
</head>
<body onclick="mostrarVideo(event)">
    <header id="header">
        <h1>Gestión de Bancos</h1>
        <nav>
            <ul>
                <li><a href="incluir.php">Incluir</a></li>
                <li><a href="modificar.php">Modificar</a></li>
                <li><a href="eliminar.php">Eliminar</a></li>
                <li><a href="consultar.php">Consultar</a></li>
            </ul>
        </nav>
    </header>

    <section id="contenido">
        <h2>Bienvenido al sistema de gestión de bancos</h2>
        <p>Selecciona una opción en el menú para gestionar la información.</p>
    </section>

    <footer id="footer">
        <p>&copy; 2025 Gestión de Bancos | Todos los derechos reservados</p>
    </footer>

    <div id="video-container" style="display: none;">
        <video id="video" playsinline muted>
            <source src="1.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de video.
        </video>
    </div>

    <script>
        let videoActivo = false;

        function mostrarVideo(event) {
            if (videoActivo || event.target.closest("nav") || event.target.closest("#contenido") || event.target.closest("#footer")) {
                return;
}

            videoActivo = true;

            document.getElementById("contenido").style.display = "none";
            document.getElementById("header").style.display = "none";
            document.getElementById("footer").style.display = "none";

            let video = document.getElementById("video");
            let videoContainer = document.getElementById("video-container");

            videoContainer.style.display = "block";
            video.muted = false;
            video.currentTime = 0;
            video.play();

            document.addEventListener("keydown", detectarEscape);
}

        function restaurarPagina() {
            let video = document.getElementById("video");
            let videoContainer = document.getElementById("video-container");

            videoContainer.style.display = "none";
            video.pause();
            video.currentTime = 0;
            video.muted = true;

            document.getElementById("contenido").style.display = "block";
            document.getElementById("header").style.display = "block";
            document.getElementById("footer").style.display = "block";

            document.removeEventListener("keydown", detectarEscape);
            videoActivo = false;
}

        function detectarEscape(event) {
            if (event.key === "Escape") {
                restaurarPagina();
}
}
    </script>

</body>







</html>
