/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author isabela
 */
@WebServlet(name = "MultiplicationTableServlet", urlPatterns = {"/mult-table.html"})
public class MultiplicationTableServlet extends HttpServlet {

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
            out.println("<title>Java EE - Servlets</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>JavaEE</h1>");
            out.println("<h1>Servlets</h1>");             
            out.println("<p>Links Rápidos ");
                for(int i=1; i<=20; i++) {
                    out.print("<a href ='?n="+i+"'>"+i+"</a> | ");
                }            
            out.println("<h1>Tabuada</h1>"); 
                try {
                   int n = Integer.parseInt(request.getParameter("n"));
                   out.println("<table>");
                        for (int i = 1; i<=10; i++) {                    
                        out.println("<tr><th>"+n+"</th><th>x</th><th>"+i+"</th><th>=</th><td>"+(n*i)+"</td></tr>");
                        }               
                    }            
                catch (Exception ex) { 
                      out.println("<p style = 'color:red'>"+ex.getMessage()+"</p>");
                }
            out.println("</table>");
            out.println("<h3><a href ='index.html'>Voltar</a></h3>");
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
