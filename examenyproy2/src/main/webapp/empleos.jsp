<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="Mostrar.jsp" %> 
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Empleos</title>
    <link rel="stylesheet" href="empleos.css">
</head>
<body>
    <div class="background"></div>
    <div class="list-container">
        <h2>Lista de Empleos</h2>
        <div class="search-bar">
            <input type="text" id="searchName" placeholder="Ingrese el nombre de la empresa">
            <button class="search">
                <img src="https://cdn-icons-png.flaticon.com/128/482/482631.png" alt="Buscar">
            </button>
        </div>
        <div id="jobList">
            <!-- Aquí se mostrarán los empleos -->
            <% consultaEmpleos(request, response); %>
        </div>
        <div class="buttons">
            <button class="back" onclick="goBack()">Atrás</button>
        </div>
    </div>

    <script>
        function goBack() {
            window.location.href = 'empleador.jsp';
        }
    </script>
</body>
</html>
