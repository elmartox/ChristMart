<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    if (session == null || session.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp?error=No+estás+logueado");
        return;
    }
    String tipoPerfil = (String) session.getAttribute("tipoPerfil");
    if (!"Invitado".equals(tipoPerfil)) {
        response.sendRedirect("accesoDenegado.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Pesebre 3D • ChristMart</title>
    <script src="https://aframe.io/releases/1.5.0/aframe.min.js"></script>
    <style>
        body,html{margin:0;padding:0;height:100%;overflow:hidden;background:#000}
        .menu{position:absolute;top:0;left:0;width:100%;background:rgba(0,0,0,0.7);padding:12px;text-align:center;z-index:999;color:white;font-family:Arial}
        .menu a{color:#fff;margin:0 20px;text-decoration:none;font-weight:bold}
        .menu a:hover{color:#ffd700}
        .info{position:absolute;bottom:20px;left:50%;transform:translateX(-50%);background:rgba(0,0,0,0.7);color:#fff;padding:10px 20px;border-radius:10px;z-index:999}
    </style>
</head>
<body>

<div class="menu">
    <a href="menu.jsp">Volver</a> | 
    <a href="personajes.jsp">Personajes 3D</a> | 
    <a href="cerrarSesion.jsp">Salir</a>
</div>

<div class="info">WASD = moverse • Ratón = mirar alrededor</div>

<a-scene embedded="true">

    <!-- FONDO 360° CON TU IMAGEN -->
    <a-sky src="imgs/fondo3.jpg" rotation="0 -90 0"></a-sky>

    <!-- TU PESEBRE (ajusta el nombre si es distinto) -->
    <a-entity gltf-model="models/pesebre.glb" 
              scale="3 3 3" 
              position="0 0 -5" 
              rotation="0 180 0"></a-entity>

    <!-- Suelo invisible (para caminar) -->
    <a-plane position="0 0 -5" rotation="-90 0 0" width="100" height="100" visible="false"></a-plane>

    <!-- Luces navideñas (más cálidas con fondo) -->
    <a-light type="ambient" intensity="0.8"></a-light>
    <a-light type="directional" color="#ffaa77" intensity="1.3" position="5 15 10"></a-light>

    <!-- Cámara + controles -->
    <a-entity camera look-controls wasd-controls="acceleration: 65" position="0 1.6 10">
        <a-cursor color="#ffd700"></a-cursor>
    </a-entity>

</a-scene>

</body>
</html>