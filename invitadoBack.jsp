<%@page import="com.Navidad.Negocio.*"%>
<%@page import="com.Navidad.Datos.Conexion"%>
<%@page import="java.sql.*"%>
<%
    String nombre = request.getParameter("name");
    String correo = request.getParameter("email");
    String clave = request.getParameter("password");
    String fecha = request.getParameter("birthdate");

    Conexion c = new Conexion();
    String sql = "INSERT INTO tb_usuario (id_per, nombre_us, correo_us, clave_us, fecha_nac) VALUES (3, ?, ?, ?, ?)";
    // id_per = 2 → Estudiante

    try (PreparedStatement ps = c.getConexion().prepareStatement(sql)) {
        ps.setString(1, nombre);
        ps.setString(2, correo);
        ps.setString(3, clave);
        ps.setDate(4, Date.valueOf(fecha));
        ps.executeUpdate();
        response.sendRedirect("login.jsp?msg=registrado");
    } catch (Exception e) {
        response.sendRedirect("registroEstudiante.jsp?error=Ya existe ese correo");
    }
%>