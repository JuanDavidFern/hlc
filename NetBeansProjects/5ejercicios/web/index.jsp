<%-- 
    Document   : index.jsp
    Created on : 19-oct-2023, 14:06:03
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
        <%
            String desc = request.getParameter("desc");
            if (request.getParameter("desc") == null) {
                desc = "000000";
            }
        %>
        <form action="s2" method="post">
            <input type="submit" name="1" value="ejercicio1" <%if(desc.charAt(0) == 1) out.println("disabled");%>>
            <input type="submit" name="1" value="ejercicio2" <%if(desc.charAt(1) == 1) out.println("disabled");%>>
            <input type="submit" name="1" value="ejercicio3" <%if(desc.charAt(2) == 1) out.println("disabled");%>>
            <input type="submit" name="1" value="ejercicio6" <%if(desc.charAt(3) == 1) out.println("disabled");%>>
            <input type="submit" name="1" value="ejercicio10" <%if(desc.charAt(4) == 1) out.println("disabled");%>>
            <input type="submit" name="1" value="MatrizMagica" <%if(desc.charAt(5) == 1) out.println("disabled");%>>
            <input type="hidden" name="desc" value="<% out.println(desc); %>">
        </form>
    </body>
</html>
