<%-- 
    Document   : registrarse
    Created on : 08-dic-2023, 11:42:55
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
         <form action="insertar" method="POST">
            Nombre: <input type="text" name="nombre"><br>
            Contrasenia: <input type="text" name="contrasenia"><br>
            <input type="submit" name="enviar" value="enviar">
        </form>
    </body>
</html>
