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
    private String tipoi="";
    private String direc="";
    private String coste="";
    private String places="";
    private String city="";

    public int getInmueble_id() {
        return inmueble_id;
    }

    public void setInmueble_id(int inmueble_id) {
        this.inmueble_id = inmueble_id;
    }

    public String getTipoi() {
        return tipoi;
    }

    public void setTipoi(String tipoi) {
        this.tipoi = tipoi;
    }

    public String getDirec() {
        return direc;
    }

    public void setDirec(String direc) {
        this.direc = direc;
    }

    public String getCoste() {
        return coste;
    }

    public void setCoste(String coste) {
        this.coste = coste;
    }

    public String getPlaces() {
        return places;
    }

    public void setPlaces(String places) {
        this.places = places;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

}
