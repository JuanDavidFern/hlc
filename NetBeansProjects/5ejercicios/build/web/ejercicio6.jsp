<%-- 
    Document   : ejercicio6
    Created on : 19-oct-2023, 14:34:30
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
                int n1 = Integer.parseInt(request.getParameter("n1"));
                int n2 = Integer.parseInt(request.getParameter("n2"));
                out.println("Resultado<br>");
                if (n1 == n2) {
                    out.println(n1 + " es igual a " + n2);
                    }else{
                       out.println(n1 + " es diferente a " + n2);
                }
                String desc = request.getParameter("desc").toString();
                %> 
        <form action="index.jsp" method="post">
            <input type="hidden" name="desc" value="<% out.println(desc); %>">
            <input type="submit" name="enviar" value="volver">
        </form> <%
                
            }else{
        %>
        <h1>Comprobar igualdad de dos números</h1>
        <form action="ejercicio6.jsp" method="post">
            Introduce el primer número: <input type="number" name="n1"><br>
            Introduce segundo número: <input type="number" name="n2"><br>
            <% String desc = request.getAttribute("desc").toString(); %>
            <input type="hidden" name="desc" value="<% out.println(desc); %>">
            <input type="submit" name="enviar"value="enviar"><br>
            <a href="index.jsp">volver</a>
        </form>
        <% } %>
    </body>
</html>
