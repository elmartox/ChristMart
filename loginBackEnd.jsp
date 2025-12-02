<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Navidad.Seguridad.Login" %>
<%@ page import="com.Navidad.Negocio.Usuario" %>

<%
    String correo = request.getParameter("email");
    String clave  = request.getParameter("password");

    if (correo == null || clave == null || correo.trim().isEmpty() || clave.trim().isEmpty()) {
        response.sendRedirect("login.jsp?error=Completa los campos");
        return;
    }

    Login login = new Login();  // ← Ahora sí crea la conexión internamente
    Usuario usuario = login.validar(correo.trim(), clave);

    if (usuario != null) {
        session.setAttribute("usuario", usuario);
        session.setAttribute("idPerfil", usuario.getIdPerfil());
        session.setAttribute("nombreUsuario", usuario.getNombre());
        session.setAttribute("tipoPerfil", usuario.getNombrePerfil());
        response.sendRedirect("menu.jsp");
    } else {
        response.sendRedirect("login.jsp?error=Credenciales incorrectas o cuenta bloqueada");
    }
%>