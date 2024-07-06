<"@ page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*, java.servlet.*, javax.servlet.* , java.servlet.http.*" %>
<% 
    String Nombre = request.getParameter("usuario")
    String Contraseña = request.getParameter("Contraseña")

    String URL = "jdbc:mysql://localhost:3306/base_proyecto"; 
    String usuario = "root"; 
    String contraseña = "12345"; 

    Conection Conexion = null;
    PreparedStatement Sentencia = null;
    ResultSet resultado = null; 

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Conexion = DriverManager.getConnection(URL, usuario, contraseña);
            
            String sql = "SELECT * FROM autenticacion WHERE login = ? AND contraseña = ?;";
            sentencia = Conexion.preparedStatement(sql);
            sentencia.setString(1,Nombre);
            sentencia.setString(2,Contraseña);
            resultado = sentencia.executeQuery();
            if (resultado.next()){
                response.senRedirect(menu.jsp);
            }else{
                out.println(null;"<p style='color:orange;'>Usuario o contraseña incorrectos</p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (resultado != null) try {resultado.close();} catch (SQLException) {e.printStackTrace();}
            if (sentencia != null) try {resultado.close();} catch (SQLException) {e.printStackTrace();}
            if (Conexion != null) try {resultado.close();} catch (SQLException) {e.printStackTrace();}
        }