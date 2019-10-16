/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ucatolica.is.ejemplois.DTOs;

/**
 *
 * @author sala1
 */
public class InmuebleDTO {
    private int inmueble_id=0;
    private String idn="";
    private String place="";
    private String cost="";
    private String rut="";
    private String name="";

    public int getInmueble_id() {
        return inmueble_id;
    }

    public void setInmueble_id(int persona_id) {
        this.inmueble_id = inmueble_id;
    }

    public String getIdn() {
        return idn;
    }

    public void setIdn(String idn) {
        this.idn = idn;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
