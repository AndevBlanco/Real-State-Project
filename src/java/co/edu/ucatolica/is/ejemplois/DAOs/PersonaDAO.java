/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ucatolica.is.ejemplois.DAOs;

import co.edu.ucatolica.is.ejemplois.DTOs.PersonaDTO;
import co.edu.ucatolica.is.ejemplois.utils.ConexionBDs;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Esta clase es responsable de las operaciones con Persona
 * @author NixonD
 * @fecha 20/09/2019
 */
public class PersonaDAO {
    
    /**
     * Este metodo crea un registro de Persona en la BDs.
     * @param p objeto de tipo PersonaDTO
     * @return boolean
     */
    public boolean crearPersona(PersonaDTO p)
    {
        boolean rta = false;
        try {
            Connection conn = ConexionBDs.getMysqlDataSource().getConnection();
            String query = " insert into persona "
                    + " (identificacion, nombre_1, apellido_1)"
                    + " values (?, ?, ?)";
            
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString (1, p.getIdentificacion());
            preparedStmt.setString (2, p.getNombre());
            preparedStmt.setString (3, p.getApellido());

            // execute the preparedstatement
            preparedStmt.execute();
            conn.close();                        
            
            rta = true;
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rta;
    }
    
    /**
     * Metodo que consulta todas las pesonas de la BDs
     * @return ArrayList<PersonaDTO>
     */
    public ArrayList<PersonaDTO> consultarPersonas()
    {
        ArrayList<PersonaDTO> lista = new ArrayList<PersonaDTO>();
        try {            
            Connection conn = ConexionBDs.getMysqlDataSource().getConnection();                        
            String query = "SELECT * FROM persona";
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            ResultSet rs = preparedStmt.executeQuery();
            
            while(rs.next())
            {
                PersonaDTO p = new PersonaDTO();
                
                p.setIdentificacion(rs.getString("identificacion"));
                p.setNombre(rs.getString("nombre_1"));
                p.setApellido(rs.getString("apellido_1"));
                
                lista.add(p);
            }
            
            conn.close();            
            
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }
    
}
