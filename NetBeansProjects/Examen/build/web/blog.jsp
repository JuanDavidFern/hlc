<%-- 
    Document   : blog
    Created on : 11-dic-2023, 12:52:53
    Author     : xubuntu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="clases.ConnMysql"%>
<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         Usuario user = (Usuario) session.getAttribute("usuario");
         %>
         Comenta en nuestra pagina: 
         <form action="comentar" method="post">
             <input type="text" name="comentario"><br>
             <input type="submit" name="enviar" value="Enviar"><br>
         </form>
        <%
         Connection conn = new ConnMysql().getConnection();
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from comentario;");
            while (rs.next()) {
                Connection conn2 = new ConnMysql().getConnection();
            Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs2 = stmt2.executeQuery("select * from usuario where id="+rs.getInt(3)+";");
            rs2.next();
            out.print("<br><br>Mensaje de "+rs2.getString(2) +": "+rs.getString(2) + "<br>");
            if (user.getRol().equals("a") || rs.getInt(3) == user.getId()) {
        %> <form action="borrar" method="post"><input type="hidden" name="id" value="<% out.print(rs.getInt(1)); %>"> <input type="submit" name="borrar" value="Borrar comentario"></form> <%
                }
                rs2.close();
                stmt2.close();
                conn2.close();
                    
                }
                rs.close();
                stmt.close();
                conn.close();
%><br>
        <a href="cerrar">Cerrar Sesion</a>
    </body>
</html>
