/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ucatolica.is.ejemplois.controladores;

import co.edu.ucatolica.is.ejemplois.DAOs.InmuebleDAO;
import co.edu.ucatolica.is.ejemplois.DTOs.InmuebleDTO;
import co.edu.ucatolica.is.ejemplois.DTOs.InmuebleDTO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sala1
 */
public class inmueble extends HttpServlet {

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
        InmuebleDAO pdao = new InmuebleDAO();
        
        if (oper != null && oper.equals("crear")){        
            String tipo = request.getParameter("tipoi");
            String direccion = request.getParameter("direc");
            String costo = request.getParameter("coste");
            String lugar = request.getParameter("places");
            String ciu = request.getParameter("city");

            InmuebleDTO p = new InmuebleDTO();
            p.setTipoi(tipo);
            p.setDirec(direccion);
            p.setCoste(costo);
            p.setPlaces(lugar);
            p.setCity(ciu);
            boolean rta = pdao.crearInmueble(p);

            //sesion.setAttribute("info", nom + " - " + ape + " - " + rta);
            
            request.setAttribute("info", tipo + " - " + direccion + " - " + costo + " - " + lugar + "-" + ciu );
            pag = "./persona_crear_rta.jsp";
        }else if (oper != null && oper.equals("consultar")){
            ArrayList<InmuebleDTO> lista = pdao.consultarInmueble();
            
            System.out.println("lista: " + lista.size());
            
            //sesion.setAttribute("listap", lista);
            request.setAttribute("listap", lista);             
            
            pag = "./inmueble_consultar.jsp";
        }else if(oper!= null && oper.equals("eliminar")){
            String id = request.getParameter("direc");
            InmuebleDTO p = new InmuebleDTO();
            p.setDirec(id);
            pdao.eliminarInmueble(p);
            
           pag ="./inmueble_eliminar.jsp";
        }else if(oper!= null && oper.equals("modificar")){
            String tipo = request.getParameter("tipoi");
            String direccion = request.getParameter("direc");
            String costo = request.getParameter("coste");
            String lugares = request.getParameter("places");
            String ciudad = request.getParameter("city");

            InmuebleDTO p = new InmuebleDTO();
            p.setTipoi(tipo);
            p.setDirec(direccion);
            p.setCoste(costo);
            p.setPlaces(lugares);
            p.setCity(ciudad);
            
            pdao.modificarInmueble(p);
            pag = "./inmueble_modificar.jsp";
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
