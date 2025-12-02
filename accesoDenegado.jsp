<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acceso Denegado | ChristMart</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="estilos/style6.css">
    <style>
        body { background: linear-gradient(135deg, #8B0000, #DC143C); color: white; }
        .card {
            background: rgba(255,255,255,0.95);
            color: #333;
            border-radius: 20px;
            padding: 3rem;
            max-width: 500px;
            margin: 100px auto;
            text-align: center;
            box-shadow: 0 20px 40px rgba(0,0,0,0.3);
        }
        h1 { font-family: 'Playfair Display', serif; color: #8B0000; }
        .btn-home {
            background: #0f4c3a;
            color: white;
            padding: 12px 30px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            margin-top: 20px;
            display: inline-block;
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>Acceso Denegado</h1>
        <p>Tu cuenta ha sido <strong>bloqueada</strong> por el administrador.</p>
        <p>Contacta al soporte para más información.</p>
        <a href="login.jsp" class="btn-home">Volver al Login</a>
    </div>
</body>
</html>