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
public class metroCuadradoDTO {
    private int precio=0;
    private int area=0;
    private int habitacion=0;
    private int baño=0;
    private int garaje=0;
    private String proceso="";
    private String lugar="";
    private String tipo="";

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public int getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(int habitacion) {
        this.habitacion = habitacion;
    }

    public int getBaño() {
        return baño;
    }

    public void setBaño(int baño) {
        this.baño = baño;
    }

    public int getGaraje() {
        return garaje;
    }

    public void setGaraje(int garaje) {
        this.garaje = garaje;
    }

    public String getProceso() {
        return proceso;
    }

    public void setProceso(String proceso) {
        this.proceso = proceso;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

}
