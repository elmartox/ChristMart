<%@ page import="com.Navidad.Negocio.GestionUsuarios" %>
<%@ page import="com.Navidad.Negocio.Usuario" %>

<%
    // Obtener los datos del formulario
    int id = Integer.parseInt(request.getParameter("id"));
    String nombre = request.getParameter("nombre");
    String correo = request.getParameter("correo");

    Usuario usuario = new Usuario();
    usuario.setId(id);
    usuario.setNombre(nombre);
    usuario.setCorreo(correo);
    

    // Instanciar la clase de gestión y actualizar el usuario
    GestionUsuarios gestionUsuarios = new GestionUsuarios();
    boolean exito = gestionUsuarios.editarUsuario(usuario);

    if (exito) {
        response.sendRedirect("gestionUsuarios.jsp"); // Redirigir a la lista de usuarios después de actualizar
    } else {
        out.println("Error al actualizar el usuario.");
    }
%>
