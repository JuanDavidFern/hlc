/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import clases.ConnMysql;
import clases.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xubuntu
 */
public class s5 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet s5</title>");
            out.println("</head>");
            out.println("<body>");
            if (request.getParameter("modificar") != null) {
                Connection conn = new ConnMysql().getConnection();
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select * from cliente where id = " + request.getParameter("id") + ";");
                if (rs.next()) {
                    out.println("<form action='s6' method='post'>");
                    out.println("ID: <input type='text' name='id'readonly value='"+ rs.getInt(1) +"'><br>");
                    out.println("Usuario: <input type='text' name='usuario' value='"+ rs.getString(2) +"'><br>");
                    out.println("Contraseña: <input type='password' name=' contrasena'value='"+ rs.getString(3) +"'><br>");
                    out.println("Crédito: <input type='text' name='credito' value='"+ rs.getInt(4) +"'><br>");
                    out.println("Fecha: <input type='text' name='fecha' disabled value='"+ rs.getDate(5) +"'><br>");
                    out.println("Rol: <input type='text' name='rol' disabled value='"+ rs.getString(6) +"'><br>");
                    out.println("<input type='submit' value='Enviar'>");
                    out.println("</form>");
                }

            }
            if (request.getParameter("borrar") != null) {
                Connection conn = new ConnMysql().getConnection();
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                stmt.executeUpdate("delete from cliente where id = " + request.getParameter("id") + ";");
                ResultSet rs = stmt.executeQuery("select * from cliente");
                request.setAttribute("miserult", rs);
                request.getRequestDispatcher("/vadmin.jsp").forward(request, response);
            }
            out.println("</body>");
            out.println("</html>");
        } catch (SQLException ex) {
            Logger.getLogger(s5.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
