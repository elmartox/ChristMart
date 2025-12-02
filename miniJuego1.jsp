<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page session="true" %>
<%@ page import="com.Navidad.Seguridad.Login" %>
<%@ page import="com.Navidad.Negocio.Usuario" %>

<%
    // Verificar si la sesión está activa y si el usuario está logueado
    if (session == null || session.getAttribute("usuario") == null) {
        // Redirigir al login si no hay sesión activa
        response.sendRedirect("login.jsp?error=No+estás+logueado");
    } else {
        // Obtener el tipo de perfil del usuario (esto está almacenado en la sesión)
        String tipoPerfil = (String) session.getAttribute("tipoPerfil");

        // Verificar si el perfil es "Estudiante"
        if (!"Estudiante".equals(tipoPerfil)) {
            // Redirigir a página de acceso denegado si no es "Estudiante"
            response.sendRedirect("accesoDenegado.jsp");
        }
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>¡Encuentra los Personajes Navideños! | ChristMart</title>

    <!-- FUENTES CORRECTAS (Playfair Display + Patrick Hand) -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&family=Patrick+Hand&display=swap" rel="stylesheet">

    <!-- TU CSS NAVIDEÑO MÁGICO -->
    <link rel="stylesheet" href="estilos/style7.css">

    <!-- Estilo global del sitio (navbar, etc.) -->
    <link rel="stylesheet" href="estilos/global-christmart.css">
</head>
<body>

    <!-- Navbar -->
    <header class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">ChristMart</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="menu.jsp">Volver al Menu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cerrarSesion.jsp">Salir</a>
                    </li>
                </ul>
            </div>
        </div>
    </header>

    <!-- Contenedor principal de juego -->
    <main class="game-container">
        <div class="game-card">
            <h1>¡Encuentra los 3 personajes mágicos!</h1>
            <p class="subtitle">Tienen un brillo sutil... ¡usa tu ojo navideño!</p>

            <div id="juego">
                <div id="p1" class="personaje" data-nombre="Ángel"></div>
                <div id="p2" class="personaje" data-nombre="Estrella"></div>
                <div id="p3" class="personaje" data-nombre="Rey Mago"></div>
            </div>

            <div id="mensaje">Personajes encontrados: <strong>0 / 3</strong></div>
            <div id="puntos">Puntos: <span id="score">0</span></div>
        </div>
    </main>

    <!-- JavaScript con defer para que cargue correctamente -->
    <script src="js/buscarPersonajes.js" defer></script>
    <!-- Agregar Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
