<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión | ChristMart</title>

    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="estilos/style5.css">
<link rel="stylesheet" href="estilos/style6.css">
</head>
<body>

    <header class="navbar">
        <div class="container">
            <a href="index.jsp" class="logo">ChristMart</a>
          <nav class="nav-links" id="navLinks">
                <a href="index.jsp">Inicio</a>
                <a href="natividad.jsp">Natividad</a>
                <a href="experiencias.jsp">Experiencias</a>
            </nav>
            <div class="hamburger" id="menuToggle">Menu</div>
    </header>

    <main class="login-section">
        <div class="login-card">
            <h1>Bienvenido de vuelta</h1>
            <p class="subtitle">Ingresa para vivir la magia de la Navidad</p>

            <%
                String error = request.getParameter("error");
                String msg = request.getParameter("msg");
                if ("credenciales".equals(error)) {
                    out.print("<p class='error-msg'>Correo o contraseña incorrectos</p>");
                } else if ("sesion".equals(error)) {
                    out.print("<p class='error-msg'>Debes iniciar sesión primero</p>");
                } else if ("registrado".equals(msg)) {
                    out.print("<p class='success-msg'>¡Registro exitoso! Ahora inicia sesión</p>");
                }
            %>

            <form action="loginBackEnd.jsp" method="POST">
                <div class="input-group">
                    <label>Correo Electrónico</label>
                    <input type="email" name="email" required placeholder="">
                </div>

                <div class="input-group">
                    <label>Contraseña</label>
                    <input type="password" name="password" required placeholder="Mínimo 8 caracteres">
                </div>

                <button type="submit" class="btn-login">Iniciar Sesión</button>
            </form>

            <p class="register-link">
                ¿Aún no tienes cuenta?
                <a href="#" id="openModal">Regístrate aquí</a>
            </p>
        </div>
    </main>

    <div id="registroModal" class="modal-overlay">
        <div class="modal-content">
            <div class="modal-header">
                <h2>Elige tu tipo de cuenta</h2>
                <span class="close-btn" id="closeModal">×</span>
            </div>
            
            <div class="modal-body">
                <div class="opcion-registro" data-target="registroEstudiante.jsp">
                    <div class="icono">Estudiante</div>
                    <h3>Estudiante</h3>
                    <p>Acceso completo a trivia y juegos</p>
                </div>

                <div class="opcion-registro" data-target="registroInvitado.jsp">
                    <div class="icono">Invitado</div>
                    <h3>Invitado</h3>
                    <p>Explora con acceso limitado a experencias 3D/VR</p>
                </div>

                <div class="opcion-registro admin-opcion" id="adminOption">
                    <div class="icono">Administrador</div>
                    <h3>Administrador</h3>
                    <p>Solo personal autorizado</p>
                </div>
            </div>

            <div id="adminPasswordSection" class="admin-password-section" style="display:none;">
                <input type="password" id="adminPass" placeholder="Contraseña secreta" class="input-admin">
                <button type="button" id="btnVerificarAdmin" class="btn-admin">Acceder</button>
                <p class="error-admin" id="errorAdmin"></p>
            </div>
        </div>
    </div>

    <script src="js/registro.js"></script>
</body>
</html>