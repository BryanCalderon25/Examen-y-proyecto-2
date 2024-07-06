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
    <div class="login-container">
        <center>Registrar Empleo</center>
        <form method="post" action="empleoServlet">
            <div class="form__group">
                <input type="text" class="form__field" placeholder="Empresa" name="empresa" id="empresa" required />
                <label for="empresa" class="form__label">Empresa</label>
            </div>
            <div class="form__group">
                <input type="text" class="form__field" placeholder="Salario" name="salario" id="salario" required />
                <label for="salario" class="form__label">Salario</label>
            </div>
            <div class="form__group">
                <input type="text" class="form__field" placeholder="Experiencia" name="experiencia" id="experiencia" required />
                <label for="experiencia" class="form__label">Experiencia</label>
            </div>
            <div class="form__group">
                <input type="text" class="form__field" placeholder="Jornada" name="jornada" id="jornada" required />
                <label for="jornada" class="form__label">Jornada</label>
            </div>
            <div class="form__group">
                <input type="text" class="form__field" placeholder="Puesto" name="puesto" id="puesto" required />
                <label for="puesto" class="form__label">Puesto</label>
            </div>
            <div class="form__group">
                <input type="text" class="form__field" placeholder="Horario" name="horario" id="horario" required />
                <label for="horario" class="form__label">Horario</label>
            </div>
            <button type="submit" class="form__button">Registrar</button>
        </form>
    </div> 
</body>
</html>
