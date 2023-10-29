<%-- 
    Document   : MAtrizMagica
    Created on : 18-oct-2023, 11:07:23
    Author     : xubuntu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = 'clases.MatrizMagica'%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("enviar") != null) {
                    String desc = request.getParameter("desc").toString();
                    int n = Integer.parseInt(request.getParameter("n"));
                if(n % 2 == 1){
                    %>
            <form action="index.jsp" method="post"><br>
                <input type="hidden" name="desc" value="<% out.println(desc); %>">
                <input type="submit" name="volver" value="volver">
            </form>
                <form action="MatrizMagica.jsp" method="post">
                    <input type="hidden" name="desc" value="<% out.println(desc); %>">
                    <input type="number" name="n">
                    <input type="submit" name="enviar" value="enviar">
                </form>
                    <%
                int d = Integer.parseInt(request.getParameter("n"));
                int[][] matriz = new MatrizMagica().MatrizMagica(d); 
                out.println("<table border=1px>");
                for (int i = 0; i < d; i++) {
                        out.println("<tr>");
                        for (int j = 0; j < d; j++) {
                                out.println("<td>" + matriz[i][j] + "</td>");
                            }
                        out.println("</tr");
                    }
                }
                if(Integer.parseInt(request.getParameter("n")) % 2 == 0){
                %>
                <form action="s2" method="post"><br>
                    El numero introducido es Par
                    <input type="hidden" name="1" value="MatrizMagica">
                <input type="hidden" name="desc" value="<% out.println(desc); %>">
                <input type="submit" name="volver" value="volver">
            </form>
                <%
                }
                
            }else{
                
        %>
        
         <h1>Matriz Mágica introduce un número impar</h1>
         <form action="MatrizMagica.jsp" method="post">
            Introduce el número de filas y columnas: <input type="number" name="n"><br>
            <% String desc = request.getAttribute("desc").toString(); %>
            <input type="hidden" name="desc" value="<% out.println(desc); %>">
            <input type="submit" name="enviar"value="enviar"><br>
        </form>
        <% } %>
    </body>
</html>
