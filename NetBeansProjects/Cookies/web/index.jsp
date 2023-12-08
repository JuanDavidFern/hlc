<%-- 
    Document   : index
    Created on : 30-nov-2023, 14:30:44
    Author     : xubuntu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gestion de Cookies!</h1>
        <form action="s1" method="POST">
            Nombre para la Cookie <input type="text" name="nombre"><br>
            Valor de la Cookie <input type="text" name="valor"><br>
            <input type="submit" name="accion" value="Crear">
            <input type="submit" name="accion" value="Visualizar">
            <input type="submit" name="accion" value="Modificar">
            <input type="submit" name="accion" value="Eliminar">
        </form>
        <%
           
         %>
    </body>
</html>
