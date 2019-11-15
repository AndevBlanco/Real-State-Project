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
    public String consultarInmuebles(metroCuadradoDTO y){
        ArrayList<metroCuadradoDTO> lista = new ArrayList<metroCuadradoDTO>();
        String script="";
        try {            
            Connection conn = ConexionBDs.getMysqlDataSource().getConnection();                        
            String query = "SELECT * FROM estate where proceso=? and tipo=? and lugar=?";
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString(1, y.getProceso());
            preparedStmt.setString(2, y.getTipo());
            preparedStmt.setString(3, y.getLugar());
            ResultSet rs = preparedStmt.executeQuery();
            while(rs.next()){
                metroCuadradoDTO p=new metroCuadradoDTO();
                p.setPrecio(rs.getInt("precio"));
                p.setArea(rs.getInt("area"));
                p.setHabitacion(rs.getInt("habitaciones"));
                p.setBaño(rs.getInt("baños"));
                p.setGaraje(rs.getInt("garajes"));
                p.setLugar(rs.getString("lugar"));
                p.setProceso(rs.getString("proceso"));
                p.setTipo(rs.getString("tipo"));
                int f=(int) Math.floor(Math.random()*6+1);
                script=script+"<div class=\"card mb-3 border border-warning\" style=\"max-width: 100%;\">\n" +
                        "            <div class=\"row no-gutters\" id=\"lascars\">\n" +
                        "              <div class=\"col-md-4\">\n" +
                        "                  <img src='./metroCuadrado/img/"+f+".jpg' class=\"card-img\" alt=\"...\">\n" +
                        "              </div>\n" +
                        "              <div class=\"col-md-8\">\n" +
                        "                <div class=\"card-body\">\n" +
                        "                  <h5 style=\"font-size:30px;\" class=\"card-title\">"+p.getPrecio()+"</h5>\n" +
                        "                  <p style=\"font-size:20px;\" class=\"card-text\"> "+p.getTipo()+" ubicado en "+p.getLugar()+" cuenta con: "+p.getHabitacion()+" habitaciones, "+p.getBaño()+" baños, "+p.getGaraje()+" garajes</p>\n" +
                        "                  <p style=\"font-size:30px;\" class=\"card-text\"><small class=\"text-muted\"> Area: "+p.getArea()+"</small></p>\n" +
                        "                </div>\n" +
                        "              </div>\n" +
                        "            </div>\n" +
                        "        </div>";
            }
            conn.close();            
            
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return script;
    }

}
