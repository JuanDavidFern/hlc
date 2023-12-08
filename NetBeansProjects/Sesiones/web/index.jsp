<%-- 
    Document   : index
    Created on : 30-oct-2023, 9:00:38
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
        Usuario logueado = (Usuario) session.getAttribute("logueado");
        if (session.isNew() || logueado == null) {
                %>
                <form action="s1" method="post">
                    Usuario: <input type="text" name="name"><br>
                    Contraseña: <input type="text" name="pass"><br>
                    <input type="submit" name="enviar" value="enviar">
                </form>
                <a href="s4">Crear usuario</a>
                <%
            } else{ 
                out.println(logueado.getName() + "<br>");
                out.println(logueado.getPass() + "<br>");
                out.println(logueado.getCredit() + "<br>");
                out.println(logueado.getDate() + "<br>");
                out.println(logueado.getRoll() + "<br>");
                out.println("<br><a href='s3' >Cerrar Sesion</a>");
}%>
    </body>
</html>
