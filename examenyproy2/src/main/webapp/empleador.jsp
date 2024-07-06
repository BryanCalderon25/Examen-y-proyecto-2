<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconfig.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Empleos</title>
    <link rel="stylesheet" href="empleador.css">
</head>
<body>
    <div class="background"></div>
    <div class="form-container">
        <h2>Por favor ingrese la información acerca del empleo:</h2>
        <form method="post" action="Insertar.jsp">
            <div class="form-group">
                <label for="empresa" class="form-label">Empresa</label>
                <input type="text" class="form-field" placeholder="Empresa" name="empresa" id="empresa" required />
            </div>
            <div class="form-group">
                <label for="salario" class="form-label">Salario</label>
                <input type="text" class="form-field" placeholder="Salario" name="salario" id="salario" required />
                
            </div>
            <div class="form-group">
                <label for="experiencia" class="form-label">Experiencia</label>
                <input type="text" class="form-field" placeholder="Experiencia" name="experiencia" id="experiencia" required />
            </div>
            <div class="form-group">
                <label for="jornada" class="form-label">Jornada</label>
                <input type="text" class="form-field" placeholder="Jornada" name="jornada" id="jornada" required />
                
            </div>
            <div class="form-group">
                <label for="puesto" class="form-label">Puesto</label>
                <input type="text" class="form-field" placeholder="Puesto" name="puesto" id="puesto" required />
            </div>
            <div class="form-group">
                <label for="horario" class="form-label">Horario</label>
                <input type="text" class="form-field" placeholder="Horario" name="horario" id="horario" required />
                
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
        </form>
        <% if (request.getAttribute("error") != null) { %>
            <div class="error-message">
                <%= request.getAttribute("error") %>
            </div>
        <% } %>
            <script>
                function goToMenu() {
                    window.location.href = 'menu.jsp';
                }
            </script>
        </body>
        </html>
