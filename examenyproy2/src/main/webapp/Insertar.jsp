<%@ page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*, java.servlet.*, javax.servlet.*, java.servlet.http.*" %>
<% 
    String Empresa = request.getParameter("empresa");
    String Salario = request.getParameter("salario");
    String Experiencia = request.getParameter("experiencia");
    String Jornada = request.getParameter("jornada");
    String Puesto = request.getParameter("puesto");
    String Horario = request.getParameter("horario");

    String URL = "jdbc:mysql://localhost:3306/base_proyecto"; 
    String usuario = "root"; 
    String contrasena = "12345"; 

    Connection Conexion = null;
    PreparedStatement Sentencia = null;
    ResultSet resultado = null; 
    String error = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Conexion = DriverManager.getConnection(URL, usuario, contrasena);
            
            String sql = "INSERT INTO empleos(empresa,salario,experiencia,jornada,puesto,horario) VALUES (?,?,?,?,?,?);";
            Sentencia = Conexion.prepareStatement(sql);
            Sentencia.setString(1,Empresa);
            Sentencia.setString(2,Salario);
            Sentencia.setString(3,Experiencia);
            Sentencia.setString(4,Jornada);
            Sentencia.setString(5,Puesto);
            Sentencia.setString(6,Horario);
            int filasInsertadas = Sentencia.executeUpdate();

            // Si se insertó al menos una fila, redirigir a Mostrar.jsp
            if (filasInsertadas > 0) {
                response.sendRedirect("empleos.jsp");
            } else {
                error = "Ingreso fallido!";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (resultado != null) {
                try {
                    resultado.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (Sentencia != null) {
                try {
                    Sentencia.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (Conexion != null) {
                try {
                    Conexion.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        // Pasar el mensaje de error a la página de inicio de sesión
        if (error != null) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
%>