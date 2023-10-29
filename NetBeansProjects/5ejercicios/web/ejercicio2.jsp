<%-- 
    Document   : ejercicio2
    Created on : 19-oct-2023, 14:17:17
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
        <% if (request.getParameter("enviar") != null) {
                out.println("Bienvenido " + request.getParameter("nombre") + " " + request.getParameter("apellidos"));
                 String desc = request.getParameter("desc").toString();
                 %> 
        <form action="index.jsp" method="post">
            <input type="hidden" name="desc" value="<% out.println(desc); %>">
            <input type="submit" name="enviar" value="volver">
        </form> <%
            }else{
        %>
        <form action="ejercicio2.jsp" method="post">
            Introduce tu nombre: <input type="text" name="nombre"><br>
            Introduce tus apellidos: <input type="text" name="apellidos"><br>
             <% String desc = request.getAttribute("desc").toString(); %>
            <input type="hidden" name="desc" value="<% out.println(desc); %>">
            <input type="submit" name="enviar"value="enviar"><br>
            <a href="index.jsp">volver</a>
        </form>
        <% } %>
    </body>
</html>
