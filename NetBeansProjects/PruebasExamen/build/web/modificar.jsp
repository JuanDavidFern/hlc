<%-- 
    Document   : modificar
    Created on : 08-dic-2023, 13:54:51
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
        <h1>Hello World!</h1>
        <form action="mod" method="POST">
            Nombre: <input type="text" name="nombre"><br>
            Contrasenia: <input type="text" name="contrasenia"><br>
            <input type="submit" name="modificar" value="Modificar">
        </form>
    </body>
</html>
