<%@ page session="true" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.Navidad.Negocio.Usuario" %>
<%
    // Obtener el objeto Usuario desde la sesión
    Usuario usuario = (Usuario) session.getAttribute("usuario");

    // Verificar si el objeto usuario es null
    if (usuario != null) {
        // Obtener el nombre del usuario
        String nombre = usuario.getNombre();
    } else {
        // Si el usuario no está en la sesión, redirigir al login
        response.sendRedirect("login.jsp?error=No+estás+logueado");
    }
%>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trivia sobre la Natividad | ChristMart</title>

    <!-- Fuentes elegantes -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Inter:wght@400;600&display=swap" rel="stylesheet">

    <!-- Tu estilo global + el específico de esta página -->
    <link rel="stylesheet" href="estilos/trivia.css">
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

    <!-- Trivia -->
    <main class="container trivia-container">
        <h1>Trivia sobre la Natividad</h1>
        <form action="guardarPuntaje.jsp" method="POST">
            <div class="question">
                <p>1. ¿Dónde nació Jesús?</p>
                <input type="radio" name="q1" value="Belén" required> Belén<br>
                <input type="radio" name="q1" value="Jerusalén"> Jerusalén<br>
                <input type="radio" name="q1" value="Nazaret"> Nazaret<br>
            </div>

            <div class="question">
                <p>2. ¿Quiénes visitaron a Jesús poco después de su nacimiento?</p>
                <input type="radio" name="q2" value="Reyes Magos" required> Reyes Magos<br>
                <input type="radio" name="q2" value="Ángeles"> Ángeles<br>
                <input type="radio" name="q2" value="Pastores"> Pastores<br>
            </div>

            <div class="question">
                <p>3. ¿Cómo se llamaba la madre de Jesús?</p>
                <input type="radio" name="q3" value="María" required> María<br>
                <input type="radio" name="q3" value="Elena"> Elena<br>
                <input type="radio" name="q3" value="Ana"> Ana<br>
            </div>

            <div class="question">
                <p>4. ¿Qué animales estaban presentes en el pesebre según la tradición?</p>
                <input type="radio" name="q4" value="Buey y burro" required> Buey y burro<br>
                <input type="radio" name="q4" value="Caballo y oveja"> Caballo y oveja<br>
                <input type="radio" name="q4" value="Perro y gato"> Perro y gato<br>
            </div>

            <div class="question">
                <p>5. ¿Cómo se llama el lugar donde nació Jesús?</p>
                <input type="radio" name="q5" value="Pesebre" required> Pesebre<br>
                <input type="radio" name="q5" value="Establo"> Establo<br>
                <input type="radio" name="q5" value="Cueva"> Cueva<br>
            </div>

            <div class="question">
                <p>6. ¿Cuántos Reyes Magos fueron a ver al niño Jesús?</p>
                <input type="radio" name="q6" value="Tres" required> Tres<br>
                <input type="radio" name="q6" value="Dos"> Dos<br>
                <input type="radio" name="q6" value="Cuatro"> Cuatro<br>
            </div>

            <button type="submit" class="btn btn-success">Enviar Respuestas</button>
        </form>
    </main>

    <!-- Agregar Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
