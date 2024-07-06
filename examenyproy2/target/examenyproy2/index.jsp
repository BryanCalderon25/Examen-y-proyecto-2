<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconfig.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Inicio de Sesión</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="background"></div>
    <div class="login-container">
        <center>Inicio de Sesión</center>
        <form method="post" action="loginServlet">
            <div class="form__group">
                <input type="text" class="form__field" placeholder="Usuario" name="usuario" id="usuario" required />
                <label for="usuario" class="form__label">Usuario</label>
            </div>
            <div class="form__group">
                <input type="password" class="form__field" placeholder="Contraseña" name="contraseña" id="contraseña" required />
                <label for="contraseña" class="form__label">Contraseña</label>
            </div>
            <button type="submit" class="form__button">Iniciar Sesión</button>
        </form>

        
    </div> 
    
</body>
</html>
