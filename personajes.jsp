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
        if (!"Invitado".equals(tipoPerfil)) {
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
    <title>Personajes del Pesebre en 3D | ChristMart</title>

    <!-- Fuentes elegantes -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

    <!-- Model Viewer (para .glb) -->
    <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>

    <!-- Tu estilo global + el específico de esta página -->
    <link rel="stylesheet" href="estilos/style8.css">
  
</head>
<body>

    <!-- Navbar (con Bootstrap) -->
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

    <!-- Hero Navideño -->
    <section class="hero-3d">
        <div class="container">
            <h1 class="hero-title">Personajes del Pesebre en 3D</h1>
            <p class="hero-subtitle">Toca, gira y admira cada detalle mágico del nacimiento</p>
        </div>
    </section>

    <!-- Galería de Personajes 3D -->
    <main class="container gallery-3d">
        <div class="grid">

            <!-- BALTASAR -->
            <div class="card-3d">
                <model-viewer 
                    src="models/baltasar.glb" 
                    alt="Baltasar - Rey Mago" 
                    auto-rotate 
                    camera-controls 
                    ar 
                    shadow-intensity="1" 
                    exposure="0.8" 
                    style="width:100%; height:420px;">
                </model-viewer>
                <div class="card-info">
                    <h3>Baltasar</h3>
                    <p>Rey Mago que trajo mirra</p>
                </div>
            </div>

            <!-- GASPAR -->
            <div class="card-3d">
                <model-viewer 
                    src="models/gaspar.glb" 
                    alt="Gaspar - Rey Mago" 
                    auto-rotate 
                    camera-controls 
                    ar 
                    shadow-intensity="1" 
                    exposure="0.9">
                </model-viewer>
                <div class="card-info">
                    <h3>Gaspar</h3>
                    <p>Rey Mago que trajo incienso</p>
                </div>
            </div>

            <!-- MELCHOR -->
            <div class="card-3d">
                <model-viewer 
                    src="models/melchor.glb" 
                    alt="Melchor - Rey Mago" 
                    auto-rotate 
                    camera-controls 
                    ar 
                    shadow-intensity="1" 
                    exposure="0.85">
                </model-viewer>
                <div class="card-info">
                    <h3>Melchor</h3>
                    <p>Rey Mago que trajo oro</p>
                </div>
            </div>

            <!-- FAMILIA 1 (Sagrada Familia) -->
            <div class="card-3d">
                <model-viewer 
                    src="models/familia1.glb" 
                    alt="Sagrada Familia" 
                    auto-rotate 
                    camera-controls 
                    ar 
                    shadow-intensity="1.2" 
                    exposure="1">
                </model-viewer>
                <div class="card-info">
                    <h3>Sagrada Familia</h3>
                    <p>María, José y el Niño Jesús</p>
                </div>
            </div>

            <!-- FAMILIA 2 (otra versión) -->
            <div class="card-3d">
                <model-viewer 
                    src="models/familia3.glb" 
                    alt="Sagrada Familia" 
                    auto-rotate 
                    camera-controls 
                    ar 
                    shadow-intensity="1" 
                    exposure="0.9">
                </model-viewer>
                <div class="card-info">
                    <h3>Sagrada Familia (Variante)</h3>
                    <p>Hermosa figura</p>
                </div>
            </div>

        </div>
    </main>
    <!-- Agregar Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
