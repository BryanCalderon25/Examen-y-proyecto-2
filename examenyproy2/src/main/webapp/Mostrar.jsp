<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.Statement, java.sql.ResultSet, java.sql.SQLException" %>
<%
    void consultaEmpleos(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws IOException {
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // Establecer la conexión a la base de datos
        String url = "jdbc:mysql://localhost:3306/tu_basedatos"; // URL de tu base de datos
        String username = "tu_usuario"; // Tu usuario de la base de datos
        String password = "tu_contraseña"; // Tu contraseña de la base de datos

        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);

        // Consulta de empleos
        stmt = conn.createStatement();
        String query = "SELECT * FROM empleos";
        rs = stmt.executeQuery(query);

        // Asignar los empleos
        while (rs.next()) {
            String empresa = rs.getString("empresa");
            String salario = rs.getString("salario");
            String experiencia = rs.getString("experiencia");
            String jornada = rs.getString("jornada");
            String puesto = rs.getString("puesto");
            String horario = rs.getString("horario");
%>
            <div class="job-item">
                <h3><%= empresa %></h3>
                <p><strong>Salario:</strong> <%= salario %></p>
                <p><strong>Experiencia:</strong> <%= experiencia %></p>
                <p><strong>Jornada:</strong> <%= jornada %></p>
                <p><strong>Puesto:</strong> <%= puesto %></p>
                <p><strong>Horario:</strong> <%= horario %></p>
                <div class="job-buttons">
                    <button class="update">Actualizar</button>
                    <button class="delete">Eliminar</button>
                </div>
            </div>
<%
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    } finally {
        // Cerrar recursos
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
%>