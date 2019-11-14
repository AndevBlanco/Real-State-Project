/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ucatolica.is.ejemplois.DAOs;

import co.edu.ucatolica.is.ejemplois.DTOs.PersonaDTO;
import co.edu.ucatolica.is.ejemplois.DTOs.metroCuadradoDTO;
import co.edu.ucatolica.is.ejemplois.utils.ConexionBDs;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sala1
 */
public class metroCuadradoDAO {
    public ArrayList<metroCuadradoDTO> consultarInmuebles(){
        ArrayList<metroCuadradoDTO> lista = new ArrayList<metroCuadradoDTO>();
        metroCuadradoDTO p=new metroCuadradoDTO();
        try {            
            Connection conn = ConexionBDs.getMysqlDataSource().getConnection();                        
            String query = "SELECT * FROM estate";
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            ResultSet rs = preparedStmt.executeQuery();
            metroCuadradoDTO datos[]= new metroCuadradoDTO[20];
            while(rs.next()){
                p.setPrecio(rs.getInt("precio"));
                p.setArea(rs.getInt("area"));
                p.setHabitacion(rs.getInt("habitaciones"));
                p.setBaño(rs.getInt("baños"));
                p.setGaraje(rs.getInt("garajes"));
                p.setLugar(rs.getString("lugar"));
                p.setProceso(rs.getString("proceso"));
                p.setTipo(rs.getString("tipo"));

                
                lista.add(p);
            }
            
            conn.close();            
            
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }

}
