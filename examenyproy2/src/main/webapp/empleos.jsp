<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <div class="job-item">
                <h3>Empresa A</h3>
                <p><strong>Salario:</strong> 50000</p>
                <p><strong>Experiencia:</strong> 2 años</p>
                <p><strong>Jornada:</strong> Completa</p>
                <p><strong>Puesto:</strong> Desarrollador</p>
                <p><strong>Horario:</strong> 9am - 5pm</p>
                <div class="job-buttons">
                    <button class="update">Actualizar</button>
                    <button class="delete">Eliminar</button>
                </div>
            </div>
            <div class="job-item">
                <h3>Empresa B</h3>
                <p><strong>Salario:</strong> 60000</p>
                <p><strong>Experiencia:</strong> 3 años</p>
                <p><strong>Jornada:</strong> Medio tiempo</p>
                <p><strong>Puesto:</strong> Analista</p>
                <p><strong>Horario:</strong> 10am - 2pm</p>
                <div class="job-buttons">
                    <button class="update">Actualizar</button>
                    <button class="delete">Eliminar</button>
                </div>
            </div>
            <!-- Agregar más empleos según sea necesario -->
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
