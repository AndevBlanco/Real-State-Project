/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ucatolica.is.ejemplois.controladores;

import co.edu.ucatolica.is.ejemplois.DAOs.metroCuadradoDAO;
import co.edu.ucatolica.is.ejemplois.DTOs.metroCuadradoDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sala1
 */
public class metroCuadradoControlador extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //HttpSession sesion = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        
        String pag = "";
        String oper = request.getParameter("buscar");
        String proc = request.getParameter("proceso");
        String tip = request.getParameter("tipo");
        String lug = request.getParameter("lugar");
        metroCuadradoDTO p = new metroCuadradoDTO();
        metroCuadradoDAO pdao = new metroCuadradoDAO();
        p.setProceso(proc);
        p.setTipo(tip);
        p.setLugar(lug);
        
        String lista = pdao.consultarInmuebles(p);
        request.setAttribute("listap", lista);  

        pag = "./metroCuadrado/inmueble_consultar.jsp";

        
        
        RequestDispatcher rd = request.getRequestDispatcher(pag);
        rd.forward(request, response);
        
        
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
