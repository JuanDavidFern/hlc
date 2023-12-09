<%-- 
    Document   : index
    Created on : 08-dic-2023, 10:42:53
    Author     : xubuntu
--%>

<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
        Usuario user = (Usuario) session.getAttribute("usuario");
        if (session.isNew() || user == null) {
                %>
        <form action="acceder" method="POST">
            Nombre: <input type="text" name="nombre"><br>
            Contrasenia: <input type="text" name="contrasenia"><br>
            <input type="submit" name="acceder" value="Acceder"><br>
            <input type="submit" name="acceder" value="Borrar">
        </form>
        <form action="registrarse.jsp" method="POST">
            <input type="submit" name="registrarse" value="Registarse">
        </form>
        <form action="modificar.jsp" method="post">
            <input type="submit" name="modificar" value="Modificar">
        </form>
                <%
            } else{
             out.print(user.getNombre()+"hola"+user.getContrasenia());
            
        %>
        <a href="cerrar">cerrar Sesion</a>
        <% } %>
    </body>
</html>
