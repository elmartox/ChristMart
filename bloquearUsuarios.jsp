<%@ page import="com.Navidad.Negocio.GestionUsuarios" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    GestionUsuarios gestionUsuarios = new GestionUsuarios();
    
    boolean exito = gestionUsuarios.cambiarEstadoUsuario(id, "bloqueado");
    
    if (exito) {
        response.sendRedirect("gestionUsuarios.jsp");
    } else {
        out.println("Error al bloquear el usuario.");
    }
%>
