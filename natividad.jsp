<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Natividad | ChristMart</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Inter:wght@300;400;500&display=swap" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="estilos/style2.css">

</head>

<body>

<!-- NAVBAR (MISMO QUE INDEX) -->
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
    <div class="container">
        <a class="navbar-brand fw-bold text-dark" href="index.jsp">ChristMart</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav gap-3">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link active" href="natividad.jsp">Natividad</a></li>
                <li class="nav-item"><a class="nav-link" href="experiencias.jsp">Experiencias</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Acceder</a></li>
            </ul>
        </div>

    </div>
</nav>

<!-- HERO -->
<header class="natividad-hero d-flex align-items-center text-center">
    <div class="container">
        <h1 class="hero-title">La Natividad</h1>
        <p class="hero-subtitle">El origen de nuestra fe y el corazón de este proyecto</p>
    </div>
</header>

<!-- SECCIÓN EXPLICATIVA -->
<section class="container py-5 info-section">
    <div class="row align-items-center">

        <div class="col-md-6 mb-4">
            <h2 class="section-title">¿Por qué esta página web?</h2>
            <p class="mt-3">
                Este proyecto nace con el propósito de compartir la historia del nacimiento de Jesús de una manera accesible,
                interactiva y visual. Queremos ofrecer una experiencia inmersiva mediante el uso de tecnología moderna como
                modelos 3D, recorridos interactivos y contenido educativo.
            </p>
            <p>
                La Navidad es mucho más que una fecha: es un mensaje de esperanza, amor y unidad. Esta plataforma busca
                transmitir ese mensaje con un enfoque actualizado, atractivo y pensado para todas las edades.
            </p>
        </div>

        <div class="col-md-6 text-center">
            <img src="imgs/nat7.webp" class="img-fluid rounded shadow" alt="Ilustración de la natividad">
        </div>

    </div>
</section>
<!-- SPOTIFY CHRISTMAS PLAYLIST -->
<!-- SPOTIFY CHRISTMAS PLAYLIST -->
<section class="container py-5">
    <h2 class="section-title text-center mb-4">Música Navideña</h2>

    <div class="spotify-container mx-auto">
        <iframe data-testid="embed-iframe"
            style="border-radius:12px"
            src="https://open.spotify.com/embed/playlist/6LZf90klt9qUYtUi0DHCtw?utm_source=generator"
            width="100%" height="352" frameBorder="0"
            allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"
            loading="lazy">
        </iframe>
    </div>
</section>



<!-- CARROUSEL -->
<section class="container py-4">
    <h2 class="section-title text-center mb-4">Momentos que representan la Natividad</h2>

    <div id="carouselNatividad" class="carousel slide shadow-lg rounded overflow-hidden" data-bs-ride="carousel">

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="imgs/nat1.jpg" class="d-block w-100" alt="Pesebre">
            </div>
            <div class="carousel-item">
                <img src="imgs/nat3.jpg" class="d-block w-100" alt="Nacimiento de Jesús">
            </div>
            <div class="carousel-item">
                <img src="imgs/nat4.jpg" class="d-block w-100" alt="Reyes Magos">
            </div>
        </div>

        <button class="carousel-control-prev" type="button" data-bs-target="#carouselNatividad" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>

        <button class="carousel-control-next" type="button" data-bs-target="#carouselNatividad" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>

    </div>
</section>

<!-- TARJETAS -->
<section class="container my-5">
    <h2 class="section-title text-center mb-4">Temas que exploramos</h2>

    <div class="row g-4">

        <div class="col-md-4 col-sm-12">
            <div class="info-card shadow-sm">
                <h4>Historia Bíblica</h4>
                <p>Una explicación clara y visual del relato del nacimiento de Jesús según las Escrituras.</p>
            </div>
        </div>

        <div class="col-md-4 col-sm-12">
            <div class="info-card shadow-sm">
                <h4>Cultura y Tradición</h4>
                <p>Cómo la Navidad trascendió en costumbres, arte y celebraciones alrededor del mundo.</p>
            </div>
        </div>

        <div class="col-md-4 col-sm-12">
            <div class="info-card shadow-sm">
                <h4>Experiencia Interactiva</h4>
                <p>Uso de tecnología 3D, realidad aumentada y material educativo dinámico para aprender jugando.</p>
            </div>
        </div>

    </div>
</section>

<!-- FOOTER -->
<footer class="footer">
    ChristMart © 2025 — Todos los derechos reservados
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
