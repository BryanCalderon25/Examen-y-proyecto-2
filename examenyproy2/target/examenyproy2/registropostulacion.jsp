<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Postulación</title>
    <link rel="stylesheet" href="registropostulacion.css">
</head>
<body>
    <div class="background"></div>
    <div class="form-container">
        <h2>Por favor ingrese la información del postulante:</h2>
        <div class="form-group">
            <label for="nombrePostulante">Ingrese el nombre del postulante:</label>
            <input type="text" id="nombrePostulante" placeholder="Nombre del postulante">
        </div>
       
        <div class="buttons">
            <button class="insert" id="postularse">Postularse</button>
            <button class="back" id="atras">Atrás</button>
        </div>
    </div>

    <script>
        document.getElementById("postularse").addEventListener("click", function() {
            const nombrePostulante = document.getElementById("nombrePostulante").value;
            // Aquí puedes agregar la lógica para actualizar la postulación
            console.log(`Postulante: ${nombrePostulante}, Empresa: ${nombreEmpresa}`);
            alert('Postulación enviada con éxito.');
        });

        document.getElementById("atras").addEventListener("click", function() {
            window.location.href = "postularse.jsp"; // Redirige a la página de FrmPostular
        });
    </script>
</body>
</html>
