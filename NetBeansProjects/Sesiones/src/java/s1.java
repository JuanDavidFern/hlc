/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import clases.ConnMysql;
import clases.Usuario;
import com.mysql.cj.x.protobuf.MysqlxSql;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xubuntu
 */
public class s1 extends HttpServlet {

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
            out.println("<title>Servlet s1</title>");
            out.println("</head>");
            out.println("<body>");
            HttpSession miSesion;
            miSesion = request.getSession();
            String name = (String) request.getParameter("name");
            String pass = (String) request.getParameter("pass");
            Connection conn = new ConnMysql().getConnection();
            Usuario user = null;
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from cliente where usuario like '" + name + "' and password like '" + pass + "' ;");
            if (rs.next()) {
                user = new Usuario();
                user.setName(rs.getString(2));
                user.setPass(rs.getString(3));
                user.setCredit(rs.getInt(4));
                user.setDate(rs.getDate(5));
                user.setRoll(rs.getString(6));
            }
            rs.close();
            stmt.close();
            conn.close();
            miSesion.setAttribute("logueado", user);

            if (user.getRoll().equals("a")) {
                conn = new ConnMysql().getConnection();
                stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                rs = stmt.executeQuery("select * from cliente");
                request.setAttribute("miserult", rs);
                request.getRequestDispatcher("/vadmin.jsp").forward(request, response);

            } else {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }

            /* if (user.getName().equals(name) && user.getPass().equals(pass)) {
                miSesion.setAttribute("logueado", user);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }*/
 /*
            Connection conn = new ConnMysql().getConnection();
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from cliente;");
            while (rs.next()) {                
                out.println(rs.getInt(1));
                out.println(rs.getString(2));
                out.println(rs.getString(3));
                out.println(rs.getInt(4) + "<br>");
            }
            rs.close();
            stmt.close();
            conn.close();*/
 /*stmt.executeUpdate("insert into cliente values (3,'pepe','1234',2500)");
            stmt.executeUpdate("delete from cliente where usuario='pepe'");
            stmt.close();
            stmt.executeUpdate("update cliente set credito = credito + 1 where usuario = 'ana'");*/
 /*PreparedStatement pstmt = conn.prepareStatement("insert into cliente values(?,?,?,?)");
            pstmt.setInt(1, 4);
            pstmt.setString(2, "julian");
            pstmt.setString(3, "1234");
            pstmt.setInt(4, 5000);
            pstmt.execute();
            pstmt.close();
            conn.close();*/
            out.println("</body>");
            out.println("</html>");
        } catch (SQLException ex) {
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
