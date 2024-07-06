<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Créditos</title>
    <link rel="stylesheet" href="creditos.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <h2>Créditos</h2>
        </div>
        <div class="content">
            <div class="person">
                <img src="https://via.placeholder.com/150" alt="Bryan Josué Calderón Espinoza">
                <p>Bryan Josué Calderón Espinoza</p>
            </div>
            <div class="person">
                <img src="https://via.placeholder.com/150" alt="Cesar Alberto Campos Mora">
                <p>Cesar Alberto Campos Mora</p>
            </div>
        </div>
        <button class="back-btn" onclick="goBack()">Atrás</button>
    </div>

    <script>
        function goBack() {
            window.location.href = "menu.jsp";
        }
    </script>
</body>
</html>
