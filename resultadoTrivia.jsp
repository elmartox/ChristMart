<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado de Trivia</title>

    <!-- Estilo -->
    <link rel="stylesheet" href="estilos/style7.css">
</head>
<body>
    <div class="container text-center">
        <h1>¡Gracias por jugar!</h1>
        <p>Tu puntaje es: <strong>${param.score}</strong> sobre 10</p>
        <p>Intentos realizados: <strong>${param.intentos}</strong></p>
        <a href="menu.jsp" class="btn btn-primary">Volver al Menú</a>
    </div>
</body>
</html>
</html>