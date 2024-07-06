<%@ page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*, java.servlet.*, javax.servlet.*, java.servlet.http.*" %>
<% 
    String Nombre = request.getParameter("usuario");
    String Contrasena = request.getParameter("contraseña");

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
            
            String sql = "SELECT * FROM autenticacion WHERE usuario = ? AND contraseña = ?;";
            Sentencia = Conexion.prepareStatement(sql);
            Sentencia.setString(1,Nombre);
            Sentencia.setString(2,Contrasena);
            resultado = Sentencia.executeQuery();
            if (resultado.next()){
                response.sendRedirect("menu.jsp");
            }else{
                error = "Por favor verifique su usuario y contraseña!";
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