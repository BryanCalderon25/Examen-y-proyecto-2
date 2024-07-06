<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Postulación de Empleos</title>
    <link rel="stylesheet" href="postularse.css">
</head>
<body>
    <div class="background"></div>
    <div class="postular-container">
        <h2>Postulación de Empleos</h2>
        <div class="empleos-list">
            <!-- Ejemplo de empleo -->
            <div class="empleo-item">
                <div class="empleo-info">
                    <h3>Empresa A</h3>
                    <p><strong>Salario:</strong> 50000</p>
                    <p><strong>Experiencia:</strong> 2 años</p>
                    <p><strong>Jornada:</strong> Completa</p>
                    <p><strong>Puesto:</strong> Desarrollador</p>
                    <p><strong>Horario:</strong> 9am - 5pm</p>
                </div>
                <button class="button postular-btn" onclick="postularse('Empresa A')">Postularse</button>
            </div>
            <div class="empleo-item">
                <div class="empleo-info">
                    <h3>Empresa B</h3>
                    <p><strong>Salario:</strong> 60000</p>
                    <p><strong>Experiencia:</strong> 3 años</p>
                    <p><strong>Jornada:</strong> Medio tiempo</p>
                    <p><strong>Puesto:</strong> Analista</p>
                    <p><strong>Horario:</strong> 10am - 2pm</p>
                </div>
                <button class="button postular-btn" onclick="postularse('Empresa B')">Postularse</button>
            </div>
            <!-- Agregar más empleos según sea necesario -->
        </div>
        <div class="buttons">
            <button class="back" onclick="goBack()">Atrás</button>
        </div>
    </div>

    <script>
       
                // Aquí puedes agregar la lógica para manejar los datos, por ejemplo, enviarlos a un servidor.
            
        

        function goBack() {
            window.location.href = 'menu.jsp'; // Lógica para manejar el botón de atrás
        }
        function postularse() {
            window.location.href = 'registropostulacion.jsp';
        }
    </script>
</body>
</html>
