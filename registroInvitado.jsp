<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Invitado | ChristMart</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

    <!-- Nuestro CSS limpio y perfecto -->
    <link rel="stylesheet" href="estilos/style4.css">
</head>
<body>

    <!-- NAVBAR RESPONSIVE SIN BOOTSTRAP -->
    <header class="navbar">
        <div class="container">
            <a href="index.jsp" class="logo">ChristMart</a>
            
            <nav class="nav-links" id="navLinks">
                <a href="index.jsp">Inicio</a>
                <a href="natividad.jsp">Natividad</a>
                <a href="experiencias.jsp">Experiencias</a>
                <a href="login.jsp" class="btn-acceder">Acceder</a>
            </nav>

            <div class="hamburger" id="hamburger">
                ☰
            </div>
        </div>
    </header>

    <!-- FORMULARIO (el cuadrito precioso que amas) -->
    <main class="register-section">
        <div class="register-card">
            <h1>Registro como Invitado</h1>
            <p class="subtitle">Únete a la magia de la Navidad</p>

            <form onsubmit="return validateForm()" method="POST" action="invitadoBack.jsp">
                <div class="input-group">
                    <label>Nombre completo</label>
                    <input type="text" id="name" name="name" required placeholder="">
                </div>

                <div class="input-group">
                    <label>Correo Electrónico</label>
                    <input type="email" id="email" name="email" required placeholder="">
                </div>

                <div class="input-group">
                    <label>Contraseña</label>
                    <input type="password" id="password" name="password" required placeholder="Mínimo 8 caracteres">
                </div>

                <div class="input-group">
                    <label>Fecha de Nacimiento</label>
                    <input type="date" id="birthdate" name="birthdate" required>
                </div>

                <button type="submit" class="btn-register">Registrarse</button>
            </form>

            <p class="login-link">
                ¿Ya tienes cuenta? <a href="login.jsp">Inicia sesión aquí</a>
            </p>
        </div>
    </main>

    <!-- Validación + Menú móvil (todo funcionando) -->
    <script>
        // Validación del formulario
        function validateForm() {
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            const birthdate = document.getElementById('birthdate').value;

            if (!name || !email || !password || !birthdate) {
                alert("Por favor, completa todos los campos.");
                return false;
            }
            if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                alert("Por favor, ingresa un correo válido.");
                return false;
            }
            if (password.length < 8) {
                alert("La contraseña debe tener al menos 8 caracteres.");
                return false;
            }
            return true;
        }

        // Menú hamburguesa (funciona perfecto)
        document.getElementById('hamburger').addEventListener('click', function() {
            document.getElementById('navLinks').classList.toggle('active');
        });
    </script>
</body>
</html>