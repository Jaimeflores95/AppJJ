/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.canteras.clases;

/**
 *
 * document   : claseVenta
    Created on : 23/02/2015, 11:48:47 AM
    Author     : AppJJ
    Descripción: clase que contiene los atributos de la tabla venta y sus getter and setter.
 */
public class Venta {
    //Atributos
    private int id_venta;
    private int cantidadproducto;
    private String fechaventa;
    private double totalventaproducto;
   

//constructor
    public Venta(){
        
    }
    
    //Metodos de acceso

    public int getId_venta() {
        return id_venta;
    }

    public void setId_venta(int id_venta) {
        this.id_venta = id_venta;
    }

    public int getCantidadproducto() {
        return cantidadproducto;
    }

    public void setCantidadproducto(int cantidadproducto) {
        this.cantidadproducto = cantidadproducto;
    }

    public String getFechaventa() {
        return fechaventa;
    }

    public void setFechaventa(String fechaventa) {
        this.fechaventa = fechaventa;
    }

    public double getTotalventaproducto() {
        return totalventaproducto;
    }

    public void setTotalventaproducto(double totalventaproducto) {
        this.totalventaproducto = totalventaproducto;
    }
    
   
    
    
}