<%-- 
    Document   : vadmin
    Created on : 16-nov-2023, 13:33:34
    Author     : xubuntu
--%>

<%@page import="clases.Usuario"%>
<%@page import="java.sql.*"%>
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
        ResultSet rs = (ResultSet) request.getAttribute("miserult");
        %>
        <table border="1px">
            <%
                while (rs.next()) {  
                    %>
                    <tr>
                    <form action="s5" method="post">
                        <td><% out.print(rs.getInt(1)); %></td>
                        <td><% out.print(rs.getString(2)); %></td>
                        <td><% out.print(rs.getString(3)); %></td>
                        <td><% out.print(rs.getString(4)); %></td>
                        <td><% out.print(rs.getDate(5)); %></td>
                        <td><% out.print(rs.getString(6)); %></td>
                        <input type="hidden" name="id" value="<% out.print(rs.getInt(1)); %>">
                        <td><input type="submit" name="modificar" value="Modificar"></td>
                        <td><input type="submit" name="borrar" value="Borrar"></td>
                    </form>
                    </tr>
                    <%
                    }
            %>
        </table>
    </body>
</html>
