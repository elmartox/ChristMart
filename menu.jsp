<%@page import="com.Navidad.Seguridad.MenuDinamico"%>
<%@page import="com.Navidad.Negocio.Usuario"%>
<%
    // Protección simple (sin servlet)
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp?error=sesion");
        return;
    }
    Usuario u = (Usuario) session.getAttribute("usuario");
    int perfil = (Integer) session.getAttribute("idPerfil");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | ChristMart</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="estilos/new.css">

</head>
<body>

    <header class="navbar">
    <div class="container">
        <a href="index.jsp" class="logo">ChristMart</a>

       <div class="nav-right">
    
    <nav class="dynamic-menu-wrapper">
        <span class="welcome">
            Hola, <strong><%= u.getNombre() %></strong> 
            (<%= session.getAttribute("tipoPerfil") %>)
        </span>
       <a href="cerrarSesion.jsp" class="btn-logout">Cerrar Sesión</a>
    </nav>
    

    <div class="hamburger" id="hamburger">
        <span></span><span></span><span></span>
    </div>
</div>
    </div>
</header>


    <main class="dashboard-content">
        <div class="welcome-card">
            <h1>¡Bienvenido/a <strong><%= u.getNombre() %> </strong> 
            (<%= session.getAttribute("tipoPerfil") %>) 
            esta es tu zona privada!</h1>
            <p class="subtitle">Aquí tienes acceso exclusivo según tu perfil</p>
            <div class="menu-buttons">
                <%= MenuDinamico.generar(perfil) %>
            </div>
        </div>
    </main>

    <script>
        document.querySelector('.hamburger').addEventListener('click', () => {
            document.querySelector('.user-menu').classList.toggle('active');
        });
    </script>
</body>
</html>