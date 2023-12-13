<%-- 
    Document   : index
    Created on : 11-dic-2023, 12:26:32
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
        <form action="acceder" method="post">
            Nombre de usuario:<input type="text" name="usuario"><br>
            Contraseña: <input type="text" name="pass"><br>
            <input type="submit" name="enviar" value="acceder">
        </form>
        <% }
        else {
            %> <a href="cerrar">Cerrar Sesion</a> <%
         }
        %>
    </body>
</html>
