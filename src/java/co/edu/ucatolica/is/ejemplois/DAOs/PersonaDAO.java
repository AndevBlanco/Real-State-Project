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
import javafx.scene.control.Alert;

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
                    + " (email, pass, idn, name, lname)"
                    + " values (?, ?, ?, ?, ?)";
            
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString (1, p.getEmail());
            preparedStmt.setString (2, p.getPass());
            preparedStmt.setString (3, p.getIdn());
            preparedStmt.setString (4, p.getName());
            preparedStmt.setString (5, p.getLname());

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
                
                p.setEmail(rs.getString("email"));
                p.setPass(rs.getString("pass"));
                p.setIdn(rs.getString("idn"));
                p.setName(rs.getString("name"));
                p.setLname(rs.getString("lname"));

                
                lista.add(p);
            }
            
            conn.close();            
            
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }
    public void modificarPersona(PersonaDTO p){
        try {
            Connection conn = ConexionBDs.getMysqlDataSource().getConnection();
            String query = "update persona set email = ?, pass = ?, name=?, lname=? where idn=?";
            
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString (1, p.getEmail());
            preparedStmt.setString (2, p.getPass());
            preparedStmt.setString (3, p.getName());
            preparedStmt.setString (4, p.getLname());
            preparedStmt.setString (5, p.getIdn());

            // execute the preparedstatement
            preparedStmt.execute();
            conn.close();                        
            
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public void eliminarPersona(PersonaDTO per){
        try{
             Connection conn = ConexionBDs.getMysqlDataSource().getConnection();
             String query = "DELETE FROM persona where idn = ? ";
             PreparedStatement preparedStmt = conn.prepareStatement (query);
             preparedStmt.setString(1,per.getIdn());
             preparedStmt.executeUpdate();
             
        }catch(SQLException e){
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    public boolean iniciarPersona(PersonaDTO p){
        boolean rta = false;
        int i=0;
        try {
            Connection conn = ConexionBDs.getMysqlDataSource().getConnection();
            String query = " select * from persona where email=? and pass=?";
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString (1, p.getEmail());
            preparedStmt.setString (2, p.getPass());
            ResultSet rs = preparedStmt.executeQuery();
            while(rs.next()){
                i++;
                if(i>0){
                    rta=true;
                }
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rta;
    }
    
}
