<%@ page import="com.Navidad.Negocio.GestionUsuarios" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    GestionUsuarios gestionUsuarios = new GestionUsuarios();
    
    boolean exito = gestionUsuarios.eliminarUsuario(id);
    
    if (exito) {
        response.sendRedirect("gestionUsuarios.jsp");  // Redirigir a la lista después de eliminar
    } else {
        out.println("Error al eliminar el usuario.");
    }
%>
