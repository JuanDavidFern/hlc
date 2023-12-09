<%-- 
    Document   : app
    Created on : 08-dic-2023, 12:01:29
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
        <h1>Hello World!</h1>
        <%
            Usuario user = (Usuario) session.getAttribute("usuario");
            out.print(user.getNombre()+user.getContrasenia());
            %>         
    </body>
</html>
