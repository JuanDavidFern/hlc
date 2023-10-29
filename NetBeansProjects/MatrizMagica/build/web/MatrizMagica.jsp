<%-- 
    Document   : MatrizMagica
    Created on : 29-oct-2023, 11:55:21
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
        <h1>Hello World!</h1>
        <form action="MatrizMagica.jsp" method>
            <input type="number" name="n" min="1" step="2">
            <input type="submit" name="enviar" value="enviar">
        </form><%
            int d = 0;
            if(request.getParameter("enviar") != null){
                d = Integer.parseInt(request.getParameter("n").toString());
            }else{
                d = Integer.parseInt(request.getAttribute("n").toString());
            }
                int[][] matriz = new MatrizMagica().MatrizMagica(d); 
                out.println("<table border=1px>");
                for (int i = 0; i < d; i++) {
                        out.println("<tr>");
                        for (int j = 0; j < d; j++) {
                                out.println("<td>" + matriz[i][j] + "</td>");
                            }
                        out.println("</tr");
                    }
                out.println("</table>");
                 %>
    </body>
</html>
