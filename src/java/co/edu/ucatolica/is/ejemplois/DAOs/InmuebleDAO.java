/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ucatolica.is.ejemplois.DAOs;

import co.edu.ucatolica.is.ejemplois.DTOs.InmuebleDTO;
import co.edu.ucatolica.is.ejemplois.utils.ConexionBDs;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Esta clase es responsable de las operaciones con inmueble
 * @author 
 * @fecha 20/09/2019
 */
public class InmuebleDAO {
    
    /**
     * Este metodo crea un registro de inmueble en la BDs.
     * @param p objeto de tipo InmuebleDTO
     * @return boolean
     */
    public boolean crearInmueble(InmuebleDTO p){
        boolean rta = false;
        try {
            Connection conn = ConexionBDs.getMysqlDataSource().getConnection();
            String query = " insert into inmueble "
                    + " (tipoi, direc, coste, places, city)"
                    + " values (?, ?, ?, ?, ?)";
            
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString (1, p.getTipoi());
            preparedStmt.setString (2, p.getDirec());
            preparedStmt.setString (3, p.getCoste());
            preparedStmt.setString (4, p.getPlaces());
            preparedStmt.setString (5, p.getCity());

            // execute the preparedstatement
            preparedStmt.execute();
            conn.close();                        

            rta = true;
        } catch (SQLException ex) {
            Logger.getLogger(InmuebleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rta;
    }
    
    /**
     * Metodo que consulta todas las pesonas de la BDs
     * @return ArrayList<PersonaDTO>
     */
    
}


