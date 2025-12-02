<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ChristMart | Natividad</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Model Viewer -->
    <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>

    <!-- Tu estilo -->
    <link rel="stylesheet" href="estilos/style1.css">
    <link rel="stylesheet" href="estilos/natividad.css">
    
    <!-- Estilos extra para el vídeo y objetivos interactivos -->

</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
    <div class="container">
        <a class="navbar-brand fw-bold text-dark" href="index.jsp">ChristMart</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav gap-4">
                <li class="nav-item"><a class="nav-link active" href="index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link" href="natividad.jsp">Natividad</a></li>
                <li class="nav-item"><a class="nav-link" href="experiencias.jsp">Experiencias</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Acceder</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- HERO CON VIDEO DE FONDO -->
<header class="hero-section d-flex align-items-center">
    <!-- Video de fondo (silenciado y en loop) -->
    <video class="hero-video-bg" autoplay muted loop playsinline poster="images/natividad-poster.jpg">
        <source src="videos/natividad-ambient.mp4" type="video/mp4">
        <!-- Si no tienes el vídeo aún, puedes usar este de ejemplo gratuito -->
        <!-- <source src="https://assets.mixkit.co/videos/preview/mixkit-starry-night-sky-with-nativity-scene-56458-small.mp4" type="video/mp4"> -->
    </video>
    <div class="hero-overlay"></div>

    <div class="container hero-content">
        <div class="row align-items-center flex-column-reverse flex-md-row">

            <!-- Texto -->
            <div class="col-md-6 hero-text text-center text-md-start">
                <h1>Nacimiento de Jesús</h1>
                <h3>Experiencia Interactiva</h3>
                <p class="lead">
                    Un espacio donde celebramos la llegada del Salvador mediante arte, tecnología, modelos 3D
                    y experiencias educativas llenas de fe y esperanza.
                </p>
                <a href="experiencias.jsp" class="btn btn-light btn-lg mt-4 shadow-sm">Explorar ahora</a>
            </div>

            <!-- Modelo 3D -->
            <div class="col-md-6 hero-model text-center">
                <model-viewer
                    src="models/familia1.glb"
                    alt="Sagrada Familia - Modelo 3D"
                    autoplay
                    camera-controls
                    auto-rotate
                    ar
                    ar-modes="webxr scene-viewer quick-look"
                    shadow-intensity="1.5"
                    exposure="1.1"
                    style="height: 460px; width: 100%; max-width: 520px; margin: 0 auto; border-radius: 20px; background:transparent;">
                </model-viewer>
            </div>
        </div>
    </div>
</header>

<!-- OBJETIVOS INTERACTIVOS -->
<section class="container my-5 pt-5">
    <h2 class="section-title text-center mb-5" style="font-family: 'Playfair Display', serif; color:#0a5c2d;">
        Nuestros Objetivos
    </h2>

    <div class="row g-5 justify-content-center">
        <div class="col-md-4 col-sm-12">
            <div class="card objetivo-card shadow-sm">
                <h5>Conmemorar la Natividad</h5>
                <p>Recursos visuales, historia y elementos que representan fielmente el nacimiento de Jesús.</p>
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <div class="card objetivo-card shadow-sm">
                <h5>Experiencia Inmersiva</h5>
                <p>Modelos 3D, realidad aumentada y vídeos para vivir el pesebre como nunca antes.</p>
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <div class="card objetivo-card shadow-sm">
                <h5>Aprendizaje Interactivo</h5>
                <p>Minijuegos, preguntas y actividades para niños y adultos que fortalezcan la fe.</p>
            </div>
        </div>
    </div>
</section>

<!-- FRASE FINAL -->
<section class="text-center my-5 py-5 frase-final">
    <h3>“Gloria a Dios en las alturas, <br>y en la tierra paz, buena voluntad para con los hombres.” <br><small class="text-muted">— Lucas 2:14</small></h3>
</section>
<!-- VIDEO DE YOUTUBE SOBRE LA NATIVIDAD -->
<section class="container my-5">
    <h2 class="text-center mb-4" style="font-family: 'Playfair Display', serif; color:#0a5c2d;">
        La Historia de la Natividad
    </h2>

    <div class="video-yt-container mx-auto">
        <iframe 
            src="https://www.youtube.com/embed/ljk_xulFLR8?si=wZqXsIkwHZr0Bz6d"
            title="YouTube video player"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            referrerpolicy="strict-origin-when-cross-origin"
            frameborder="0"
            allowfullscreen>
        </iframe>
    </div>
</section>

<!-- FOOTER -->
<footer class="footer py-4 text-white text-center" style="background: var(--footer-red);">
    ChristMart © 2025 — Todos los derechos reservados
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>