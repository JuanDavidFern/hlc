/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author xubuntu
 */
public class s2 extends HttpServlet {

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
            out.println("<title>Servlet s2</title>");            
            out.println("</head>");
            out.println("<body>");
            String ejercicio = request.getParameter("1");
            String desc = request.getParameter("desc");
            char[] desc2 = desc.toCharArray();
            String desc3 = null;
            switch (ejercicio){
                case "ejercicio1":
                    desc2[0] = 1;
                    desc3 = new String(desc2);
                    request.setAttribute("desc", desc3);
                    request.getRequestDispatcher("/ejercicio1.jsp").forward(request, response);
                break;
                case "ejercicio2":
                    desc2[1] = 1;
                    desc3 = new String(desc2);
                    request.setAttribute("desc", desc3);
                    request.getRequestDispatcher("/ejercicio2.jsp").forward(request, response);
                break;
                case "ejercicio3":
                    desc2[2] = 1;
                    desc3 = new String(desc2);
                    request.setAttribute("desc", desc3);
                    request.getRequestDispatcher("/ejercicio3.jsp").forward(request, response);
                break;
                case "ejercicio6":
                    desc2[3] = 1;
                    desc3 = new String(desc2);
                    request.setAttribute("desc", desc3);
                    request.getRequestDispatcher("/ejercicio6.jsp").forward(request, response);
                break;
                case "ejercicio10":
                    desc2[4] = 1;
                    desc3 = new String(desc2);
                    request.setAttribute("desc", desc3);
                    request.getRequestDispatcher("/ejercicio10.jsp").forward(request, response);
                break;
                case "MatrizMagica":
                    desc2[5] = 1;
                    desc3 = new String(desc2);
                    request.setAttribute("desc", desc3);
                    request.getRequestDispatcher("/MatrizMagica.jsp").forward(request, response);
                break;
            }
            out.println(ejercicio);
            out.println("</body>");
            out.println("</html>");
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
