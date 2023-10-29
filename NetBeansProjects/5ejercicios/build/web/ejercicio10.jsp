<%-- 
    Document   : ejercicio10
    Created on : 19-oct-2023, 14:38:17
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
                int n = Integer.parseInt(request.getParameter("n"));
                out.println("Resultado<br>");
                if (n % 2 == 0) {
                    out.println(n + " es un número par");
                    }else{
                       out.println(n + " es un número impar");
                }
                String desc = request.getParameter("desc").toString();
                 %> 
        <form action="index.jsp" method="post">
            <input type="hidden" name="desc" value="<% out.println(desc); %>">
            <input type="submit" name="enviar" value="volver">
        </form> <%
                
            }else{
        %>
        <h1>Comprobar si un número es par o impar</h1>
        <form action="ejercicio10.jsp" method="post">
            Introduce el número: <input type="number" name="n"><br>
            <% String desc = request.getAttribute("desc").toString(); %>
            <input type="hidden" name="desc" value="<% out.println(desc); %>">
            <input type="submit" name="enviar"value="enviar"><br>
            <a href="index.jsp">volver</a>
        </form>
        <% } %>
    </body>
</html>
