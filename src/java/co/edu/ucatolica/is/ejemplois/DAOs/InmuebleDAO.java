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
    public boolean crearInmueble(InmuebleDTO p)
    {
        boolean rta = false;
        try {
            Connection conn = ConexionBDs.getMysqlDataSource().getConnection();
            String query = " insert into inmueble "
                    + " (typ, add, cost, place, city)"
                    + " values (?, ?, ?, ?, ?)";
            
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString (1, p.getTyp());
            preparedStmt.setString (2, p.getAdd());
            preparedStmt.setString (3, p.getCost());
            preparedStmt.setString (4, p.getPlace());
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
    public ArrayList<InmuebleDTO> consultarInmueble()
    {
        ArrayList<InmuebleDTO> lista = new ArrayList<InmuebleDTO>();
        try {            
            Connection conn = ConexionBDs.getMysqlDataSource().getConnection();                        
            String query = "SELECT * FROM inmueble";
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            ResultSet rs = preparedStmt.executeQuery();
            
            while(rs.next())
            {
                InmuebleDTO p = new InmuebleDTO();
                
                p.setTyp(rs.getString("typ"));
                p.setAdd(rs.getString("add"));
                p.setCost(rs.getString("cost"));
                p.setPlace(rs.getString("place"));

                
                lista.add(p);
            }
            
            conn.close();            
            
        } catch (SQLException ex) {
            Logger.getLogger(InmuebleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }
    public void eliminarInmueble(InmuebleDTO per){
        try{
             Connection conn = ConexionBDs.getMysqlDataSource().getConnection();
             String query = "DELETE FROM inmueble where id_inmueble = ? ";
             PreparedStatement preparedStmt = conn.prepareStatement (query);
             preparedStmt.setInt(1,per.getInmueble_id());
             preparedStmt.executeUpdate();
                
             
        }catch(SQLException e){
            Logger.getLogger(InmuebleDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
}


