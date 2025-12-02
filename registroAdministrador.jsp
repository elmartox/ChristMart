<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Administrador | ChristMart</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts: Playfair Display + Inter -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

    <!-- Tu CSS personalizado (sobrescribe Bootstrap donde haga falta) -->
    <link rel="stylesheet" href="estilos/registro-christmart.css">
</head>
<body>

    <!-- NAVBAR (igual que en todas tus páginas) -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
        <div class="container">
            <a class="navbar-brand fw-bold playfair-logo" href="index.jsp">ChristMart</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav gap-4">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="natividad.jsp">Natividad</a></li>
                    <li class="nav-item"><a class="nav-link" href="experiencias.jsp">Experiencias</a></li>
                    <li class="nav-item"><a class="nav-link active" href="#">Acceder</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- CONTENEDOR PRINCIPAL CON TARJETA ELEGANTE -->
    <div class="container py-5 mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7 col-12">
                <div class="register-card">
                    <h1 class="playfair-title">Registro como Administrador</h1>
                    <p class="subtitle">Únete a la magia de la Navidad</p>

                    <form onsubmit="return validateForm()" method="POST" action="adminBack.jsp">
                        <div class="mb-4">
                            <label for="name" class="form-label">Nombre completo</label>
                            <input type="text" class="form-control custom-input" id="name" name="name" required>
                        </div>

                        <div class="mb-4">
                            <label for="email" class="form-label">Correo Electrónico</label>
                            <input type="email" class="form-control custom-input" id="email" name="email" required>
                        </div>

                        <div class="mb-4">
                            <label for="password" class="form-label">Contraseña</label>
                            <input type="password" class="form-control custom-input" id="password" name="password" required>
                        </div>

                        <div class="mb-4">
                            <label for="birthdate" class="form-label">Fecha de Nacimiento</label>
                            <input type="date" class="form-control custom-input" id="birthdate" name="birthdate" required>
                        </div>

                        <button type="submit" class="btn btn-register w-100">Registrarse</button>
                    </form>

                    <p class="text-center mt-4 text-muted small">
                        ¿Ya tienes cuenta? <a href="login.jsp" class="text-success fw-600">Inicia sesión aquí</a>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Tu script de validación (sin cambios) -->
    <script>
        function validateForm() {
            var name = document.getElementById('name').value.trim();
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;
            var birthdate = document.getElementById('birthdate').value;

            var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            var passwordRegex = /^.{8,}$/;

            if (!name) {
                alert("Por favor, ingresa tu nombre completo.");
                return false;
            }
            if (!emailRegex.test(email)) {
                alert("Por favor, ingrese un correo electrónico válido.");
                return false;
            }
            if (!passwordRegex.test(password)) {
                alert("La contraseña debe tener al menos 8 caracteres.");
                return false;
            }
            if (!birthdate) {
                alert("Por favor, selecciona tu fecha de nacimiento.");
                return false;
            }
            return true;
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>