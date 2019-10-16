/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ucatolica.is.ejemplois.controladores;

import co.edu.ucatolica.is.ejemplois.DAOs.PersonaDAO;
import co.edu.ucatolica.is.ejemplois.DTOs.PersonaDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sala8
 */
public class PersonaControlador extends HttpServlet {

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
        //HttpSession sesion = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        
        String pag = "";
        String oper = request.getParameter("operacion");
        PersonaDAO pdao = new PersonaDAO();
        
        if (oper != null && oper.equals("crear"))
        {        
            String correo = request.getParameter("email");
            String contraseña = request.getParameter("pass");
            String documento = request.getParameter("idn");
            String nombre = request.getParameter("name");
            String apellido = request.getParameter("lname");

            PersonaDTO p = new PersonaDTO();
            p.setEmail(correo);
            p.setPass(contraseña);
            p.setIdn(documento);
            p.setName(nombre);
            p.setLname(apellido);
            
            boolean rta = pdao.crearPersona(p);

            //sesion.setAttribute("info", nom + " - " + ape + " - " + rta);
            
            request.setAttribute("info", correo + " - " + contraseña + " - " + documento + " - " + nombre + " - " + " - " + apellido);
            pag = "./persona_crear_rta.jsp";
        }
        else if (oper != null && oper.equals("consultar"))
        {
            ArrayList<PersonaDTO> lista = pdao.consultarPersonas();
            
            System.out.println("lista: " + lista.size());
            
            //sesion.setAttribute("listap", lista);
            request.setAttribute("listap", lista);             
            
            pag = "./persona_consultar.jsp";
        }
        
        
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

