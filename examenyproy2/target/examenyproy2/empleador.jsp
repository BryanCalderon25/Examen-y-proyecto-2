<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Empleos</title>
    <link rel="stylesheet" href="empleador.css">
</head>
<body>
    <div class="background"></div>
    <div class="form-container">
        <h2>Por favor ingrese la información acerca del empleo:</h2>
        <div class="form-group">
            <label for="empresa">Empresa:</label>
            <input type="text" id="empresa">
        </div>
        <div class="form-group">
            <label for="salario">Salario:</label>
            <input type="text" id="salario">
        </div>
        <div class="form-group">
            <label for="experiencia">Experiencia requerida:</label>
            <input type="text" id="experiencia">
        </div>
        <div class="form-group">
            <label for="jornada">Jornada:</label>
            <input type="text" id="jornada">
        </div>
        <div class="form-group">
            <label for="puesto">Puesto:</label>
            <input type="text" id="puesto">
        </div>
        <div class="form-group">
            <label for="horario">Horario:</label>
            <input type="text" id="horario">
        </div>
        <div class="buttons">
            <button class="insert">Guardar</button>
            <button class="back" onclick="goToMenu()">Atrás</button>
        </div>
        <a href="empleos.jsp" class="search-icon">
            <img src="https://cdn-icons-png.flaticon.com/128/482/482631.png" alt="Consultar empleos">
            <span>Consultar empleos</span>
        </a>
    </div>

    <!-- Modal de búsqueda -->
    <div id="searchModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Consultar Empleo</h2>
            <input type="text" id="searchName" placeholder="Ingrese el nombre de la empresa">
            <button class="search">Consultar</button>
            <div id="searchResults">
                <button class="update">Actualizar</button>
                <button class="delete">Eliminar</button>
            </div>
        </div>
    </div>

    <script>
        function goToMenu() {
            window.location.href = 'menu.jsp';
        }
    </script>
</body>
</html>

