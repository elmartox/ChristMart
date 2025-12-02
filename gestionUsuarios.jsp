
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Navidad.Negocio.GestionUsuarios" %>
<%@ page import="com.Navidad.Negocio.Usuario" %>
<%@ page import="java.util.List" %>  <!-- ESTA LÍNEA ES LA QUE FALTABA -->
<%
    // Proteger página (solo admin)
    if (session.getAttribute("idPerfil") == null || 
        !session.getAttribute("idPerfil").toString().equals("1")) {
        response.sendRedirect("dashboard.jsp");
        return;
    }

    GestionUsuarios gestion = new GestionUsuarios();
    List<Usuario> usuarios = gestion.obtenerUsuarios();  // Ahora sí reconoce List
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Usuarios | ChristMart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="estilos/new.css">
</head>
<body>

    <!-- Navbar -->
    <header class="navbar">
        <div class="container">
            <a href="index.jsp" class="logo">ChristMart</a>
            <nav class="nav-links">
                <a href="menu.jsp">Menu</a>
                <a href="cerrarSesion.jsp" class="btn-acceder">Salir</a>
            </nav>
        </div>
    </header>

    <div class="container mt-5">
        <h1 class="mb-4 text-center" style="color: #0f4c3a; font-family: 'Playfair Display', serif;">
            Gestión de Usuarios
        </h1>

        <div class="table-responsive">
            <table class="table table-hover table-bordered align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Usuario u : usuarios) { %>
                        <tr>
                            <td><%= u.getId() %></td>
                            <td><%= u.getNombre() %></td>
                            <td><%= u.getCorreo() %></td>
                            <td>
                                <span class="badge <%= "activo".equals(u.getEstado()) ? "bg-success" : "bg-danger" %>">
                                    <%= u.getEstado() %>
                                </span>
                            </td>
                            <td>
                                <a href="editarUsuario.jsp?id=<%= u.getId() %>" class="btn btn-warning btn-sm">Editar</a>
                                <a href="eliminarUsuario.jsp?id=<%= u.getId() %>" 
                                   onclick="return confirm('¿Seguro que quieres eliminar este usuario?')"
                                   class="btn btn-danger btn-sm">Eliminar</a>
                                <% if ("activo".equals(u.getEstado())) { %>
                                    <a href="bloquearUsuarios.jsp?id=<%= u.getId() %>" class="btn btn-outline-danger btn-sm">Bloquear</a>
                                <% } else { %>
                                    <a href="desbloquearUsuario.jsp?id=<%= u.getId() %>" class="btn btn-outline-success btn-sm">Desbloquear</a>
                                <% } %>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>