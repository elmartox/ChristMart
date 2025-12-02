<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<%@ page import="com.Navidad.Negocio.Usuario" %>
<%@ page import="com.Navidad.Datos.Conexion" %>
<%@ page import="java.sql.*" %>

<%
    // === 1. OBTENER USUARIO DE LA SESIÓN ===
    Usuario usuario = (Usuario) session.getAttribute("usuario");

    if (usuario == null) {
        response.sendRedirect("login.jsp?error=No+estás+logueado");
        return; // ¡IMPORTANTÍSIMO! Detiene la ejecución aquí
    }

    String nombre = usuario.getNombre();
    if (nombre == null || nombre.trim().isEmpty()) {
        response.sendRedirect("login.jsp?error=Nombre+no+encontrado");
        return;
    }

    // === 2. CALCULAR PUNTAJE ===
    int score = 0;
    String[] respuestas = {"q1", "q2", "q3", "q4", "q5", "q6"};
    String[] correctas = {"Belén", "Reyes Magos", "María", "Buey y burro", "Pesebre", "Tres"};

    for (int i = 0; i < respuestas.length; i++) {
        if (correctas[i].equals(request.getParameter(respuestas[i]))) {
            score++;
        }
    }

    // === 3. INTENTOS ===
    Integer intentosObj = (Integer) session.getAttribute("intentos");
    int intentos = (intentosObj == null) ? 1 : intentosObj + 1;
    session.setAttribute("intentos", intentos);

    // === 4. GUARDAR EN BASE DE DATOS ===
    Conexion conexion = new Conexion();
    String sql = "INSERT INTO trivia_resultados (nombre, puntaje, intentos, fecha) VALUES (?, ?, ?, NOW())";

    try (Connection conn = conexion.getConexion();
         PreparedStatement stmt = conn.prepareStatement(sql)) {

        stmt.setString(1, nombre);
        stmt.setInt(2, score);        // Cambié a setInt porque puntaje es entero
        stmt.setInt(3, intentos);
        stmt.executeUpdate();

    } catch (Exception e) {
        // Opcional: loguear error
        e.printStackTrace();
        // Puedes redirigir con error si quieres
    } finally {
        conexion.cerrar();
    }

    // === 5. REDIRIGIR AL RESULTADO ===
    response.sendRedirect("resultadoTrivia.jsp?score=" + score + "&intentos=" + intentos);
%>