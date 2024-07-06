<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú Principal</title>
    <link rel="stylesheet" href="menu.css">
</head>
<body>
    <div class="background"></div>
    <div class="menu-container">
        <h1>Menú Principal</h1>
        <div id="empleador" class="menu-item">
            <img src="https://cdn-icons-png.flaticon.com/128/7567/7567987.png" alt="Empleador">
            <span>Empleador</span>
        </div>
        <div id="postular" class="menu-item">
            <img src="https://cdn-icons-png.flaticon.com/128/619/619140.png" alt="Postularse">
            <span>Postularse</span>
        </div>
        <div id="creditos" class="menu-item">
            <img src="https://cdn-icons-png.flaticon.com/128/545/545674.png" alt="Creditos">
            <span>Créditos</span>
        </div>
        <div id="video" class="menu-item">
            <img src="https://cdn-icons-png.flaticon.com/128/1934/1934483.png" alt="Video">
            <span>Ver Video</span>
        </div>
        <div id="salir" class="menu-item">
            <img src="https://cdn-icons-png.flaticon.com/128/1828/1828427.png" alt="Cerrar Sesión">
            <span>Salir</span>
        </div>
    </div>
    <script>
        document.getElementById("empleador").addEventListener("click", function() {
            window.location.href = "empleador.jsp";
        });

        document.getElementById("postular").addEventListener("click", function() {
            window.location.href = "postularse.jsp";
        });

        document.getElementById("creditos").addEventListener("click", function() {
            window.location.href = "creditos.jsp";
        });

        document.getElementById("video").addEventListener("click", function() {
            window.location.href = "video.jsp";
        });

        document.getElementById("salir").addEventListener("click", function() {
            window.close(); // Cierra la ventana actual
        });
    </script>
</body>
</html>
