<"@ page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*, java.servlet.*, javax.servlet.*, java.servlet.http.*" %>
<% 
    String Nombre = request.getParameter("usuario");
    String Contrasena = request.getParameter("Contraseña");

    String URL = "jdbc:mysql://localhost:3306/base_proyecto"; 
    String usuario = "root"; 
    String contrasena = "12345"; 

    Connection Conexion = null;
    PreparedStatement Sentencia = null;
    ResultSet resultado = null; 

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Conexion = DriverManager.getConnection(URL, usuario, contrasena);
            
            String sql = "SELECT * FROM autenticacion WHERE login = ? AND contraseña = ?;";
            Sentencia = Conexion.prepareStatement(sql);
            Sentencia.setString(1,Nombre);
            Sentencia.setString(2,Contrasena);
            resultado = Sentencia.executeQuery();
            if (resultado.next()){
                response.sendRedirect("menu.jsp");
            }else{
                out.println("<p style='color:orange;'>Usuario o contraseña incorrectos</p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (resultado != null) try {resultado.close();} catch (SQLException e) {e.printStackTrace();}
            if (Sentencia != null) try {resultado.close();} catch (SQLException e) {e.printStackTrace();}
            if (Conexion != null) try {resultado.close();} catch (SQLException e) {e.printStackTrace();}
        }
%>