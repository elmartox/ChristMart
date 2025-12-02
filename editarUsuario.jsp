<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Navidad.Negocio.GestionUsuarios" %>
<%@ page import="com.Navidad.Negocio.Usuario" %>
<%
    // Proteger página
    if (session.getAttribute("idPerfil") == null || 
        !session.getAttribute("idPerfil").toString().equals("1")) {
        response.sendRedirect("dashboard.jsp");
        return;
    }

    int id = Integer.parseInt(request.getParameter("id"));
    GestionUsuarios gestion = new GestionUsuarios();
    Usuario usuario = gestion.obtenerUsuarioPorId(id);  // ← Asegúrate de tener este método

    if (usuario == null) {
        response.sendRedirect("gestionUsuarios.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Usuario | ChristMart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="estilos/global-christmart.css">
</head>
<body>

    <header class="navbar">
        <div class="container">
            <a href="dashboard.jsp" class="logo">ChristMart</a>
            <nav class="nav-links">
                <a href="gestionUsuarios.jsp">Volver a Gestión</a>
                <a href="cerrarSesion.jsp" class="btn-acceder">Salir</a>
            </nav>
        </div>
    </header>

    <div class="container mt-5">
        <h1 class="mb-4 text-center" style="color: #0f4c3a; font-family: 'Playfair Display', serif;">
            Editar Usuario
        </h1>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="actualizarUsuario.jsp" method="post" class="p-4 border rounded shadow">
                    <input type="hidden" name="id" value="<%= usuario.getId() %>">

                    <div class="mb-3">
                        <label class="form-label">Nombre</label>
                        <input type="text" name="nombre" class="form-control" value="<%= usuario.getNombre() %>" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Correo</label>
                        <input type="email" name="correo" class="form-control" value="<%= usuario.getCorreo() %>" required>
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-success btn-lg">Guardar Cambios</button>
                        <a href="gestionUsuarios.jsp" class="btn btn-secondary btn-lg ms-3">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>