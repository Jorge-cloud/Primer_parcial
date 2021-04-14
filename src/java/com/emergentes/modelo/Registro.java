
package com.emergentes.modelo;

/**
 *
 * @author Jorge
 */
public class Registro {
    private int id;
    private String nombre;
    private int peso;
    private double talla;
    private String stado_vacuna;

    public Registro() {
        id=0;
        nombre="";
        peso=0;
        talla=0;
        stado_vacuna="";
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public double getTalla() {
        return talla;
    }

    public void setTalla(double talla) {
        this.talla = talla;
    }

    public String getStado_vacuna() {
        return stado_vacuna;
    }

    public void setStado_vacuna(String stado_vacuna) {
        this.stado_vacuna = stado_vacuna;
    }
    
    
}
