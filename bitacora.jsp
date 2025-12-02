<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Navidad.Negocio.AuditoriaDAO" %>
<%@ page import="java.util.*, java.text.SimpleDateFormat" %>

<%
    // Protección: solo admin
    String tipoPerfil = (String) session.getAttribute("tipoPerfil");
    if (!"Administrador".equals(tipoPerfil)) {
        response.sendRedirect("login.jsp");
        return;
    }

    AuditoriaDAO dao = new AuditoriaDAO();
    List<Map<String, Object>> logs = dao.obtenerTodosLosLogs();
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bitácora ChristMart 2025</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link href="estilos/auditoria.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <!-- Título -->
    <div class="text-center my-5">
        <h1 class="titulo-auditoria display-2">Bitácora</h1>
        <a href="menu.jsp" class="btn btn-volver mt-3">Volver al Menu</a>
    </div>

    <!-- Tabla -->
    <div class="card-auditoria">
        <div class="card-header-auditoria">
            <h2>Registro Completo de Actividad</h2>
        </div>
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover table-auditoria mb-0">
                    <thead>
                        <tr>
                            <th>Fecha y Hora</th>
                            <th>Usuario</th>
                            <th>Tabla</th>
                            <th>Operación</th>
                            <th>Valor Anterior</th>
                            <th>Valor Nuevo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Map<String, Object> log : logs) { %>
                            <tr>
                                <td class="text-nowrap"><%= sdf.format(log.get("fecha")) %></td>
                                <td><strong><%= log.get("usuario") %></strong></td>
                                <td>
                                    <span class="badge bg-secondary px-3 py-2"><%= log.get("tabla") %></span>
                                </td>
                                <td>
                                    <% String op = (String) log.get("operacion"); %>
                                    <% if ("I".equals(op)) { %>
                                        <span class="badge-insert">INSERT</span>
                                    <% } else if ("U".equals(op)) { %>
                                        <span class="badge-update">UPDATE</span>
                                    <% } else { %>
                                        <span class="badge-delete">DELETE</span>
                                    <% } %>
                                </td>
                                <td>
                                    <% String anterior = (String) log.get("anterior"); %>
                                    <% if (anterior != null && !anterior.equals("null")) { %>
                                        <div class="json-container"><%= anterior.replace(",", ",<br>").replace("{", "{<br>").replace("}", "<br>}").replace("\"", "") %></div>
                                    <% } else { %>
                                        <em class="text-muted">—</em>
                                    <% } %>
                                </td>
                                <td>
                                    <% String nuevo = (String) log.get("nuevo"); %>
                                    <% if (nuevo != null && !nuevo.equals("null")) { %>
                                        <div class="json-container"><%= nuevo.replace(",", ",<br>").replace("{", "{<br>").replace("}", "<br>}").replace("\"", "") %></div>
                                    <% } else { %>
                                        <em class="text-muted">—</em>
                                    <% } %>
                                </td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>