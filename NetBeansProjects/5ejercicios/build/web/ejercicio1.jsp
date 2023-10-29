<%-- 
    Document   : ejercicio1.jsp
    Created on : 19-oct-2023, 14:16:26
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
        <% String desc = request.getAttribute("desc").toString(); %>
        <h1>Juan David Fernández Pino</h1>
        <form action="index.jsp" method="post">
            <input type="hidden" name="desc" value="<% out.println(desc); %>">
            <input type="submit" name="enviar" value="volver">
        </form>
    </body>
</html>
