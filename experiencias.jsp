<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ChristMart | Experiencias</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Inter:wght@300;400;500&display=swap" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="estilos/style3.css">
</head>

<body>

<!-- NAVBAR -->
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
                <li class="nav-item"><a class="nav-link" href="natividad.jsp">Natividad</a></li>
                <li class="nav-item"><a class="nav-link active" href="experiencias.jsp">Experiencias</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Acceder</a></li>
            </ul>
        </div>

    </div>
</nav>


<!-- HERO DE PAGINA -->
<header class="page-hero d-flex align-items-center text-center">
    <div class="container">
        <h1 class="hero-title">Explora las Experiencias</h1>
        <p class="hero-subtitle">Interactúa con actividades diseñadas para aprender, jugar y vivir la Natividad.</p>
    </div>
</header>


<!-- TARJETAS DE EXPERIENCIAS -->
<section class="container experiencias-section">

    <div class="row g-4 justify-content-center">

        <!-- EXPERIENCIA 3D -->
        <div class="col-md-4">
            <div class="exp-card shadow">
                <div class="exp-bg" style="background-image: url('imgs/nat5.jpg');"></div>

                <div class="exp-content">
                    <h3>Experiencia 3D</h3>
                    <p>Observa los personajes del pesebre en 3D y AR.</p>
                    <button class="btn exp-btn" onclick="abrirModal('3d')">Probar ahora</button>
                </div>
            </div>
        </div>

        <!-- MINIJUEGO BUSCAR PERSONAJES -->
        <div class="col-md-4">
            <div class="exp-card shadow">
                <div class="exp-bg" style="background-image: url('imgs/nat6.jpg');"></div>

                <div class="exp-content">
                    <h3>Buscar Personajes</h3>
                    <p>Encuentra a los personajes escondidos del pesebre.</p>
                    <button class="btn exp-btn" onclick="abrirModal('estudiante')">Probar ahora</button>
                </div>
            </div>
        </div>

        <!-- TRIVIA -->
        <div class="col-md-4">
            <div class="exp-card shadow">
                <div class="exp-bg" style="background-image: url('imgs/nat4.jpg');"></div>

                <div class="exp-content">
                    <h3>Trivia Navideña</h3>
                    <p>Pon a prueba tus conocimientos sobre la Natividad.</p>
                    <button class="btn exp-btn" onclick="abrirModal('estudiante')">Probar ahora</button>
                </div>
            </div>
        </div>

    </div>

</section>


<!-- MODAL DE ADVERTENCIA -->
<div class="modal fade" id="modalAviso" tabindex="-1" aria-labelledby="modalAvisoLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">

          <div class="modal-header bg-success text-white">
              <h5 class="modal-title" id="modalAvisoLabel">Aviso importante</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>

          <div class="modal-body" id="modalTexto">
              <!-- Texto insertado dinámicamente -->
          </div>

          <div class="modal-footer">
              <a id="modalBtnIr" href="#" class="btn btn-success">Continuar</a>
              <button class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
          </div>

      </div>
  </div>
</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<script> src="js/exp.js"
</script>
</body>
</html>
