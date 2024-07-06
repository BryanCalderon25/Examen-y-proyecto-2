
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/empleoServlet")
public class EmpleoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String empresa = request.getParameter("empresa");
        String salario = request.getParameter("salario");
        String experiencia = request.getParameter("experiencia");
        String jornada = request.getParameter("jornada");
        String puesto = request.getParameter("puesto");
        String horario = request.getParameter("horario");

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/base_proyecto", "root", "12345")) {
            String sql = "INSERT INTO empleos (empresa, salario, experiencia, jornada, puesto, horario) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, empresa);
            ps.setString(2, salario);
            ps.setString(3, experiencia);
            ps.setString(4, jornada);
            ps.setString(5, puesto);
            ps.setString(6, horario);
            ps.executeUpdate();

            response.sendRedirect("empleador.jsp?success=1");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
