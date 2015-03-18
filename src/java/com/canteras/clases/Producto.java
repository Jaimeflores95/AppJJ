/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.canteras.clases;

/**
 *
 * document   : claseProducto
    Created on : 23/02/2015, 11:48:47 AM
    Author     : AppJJ
    Descripción: clase que contiene los atributos de la tabla producto y sus getter and setter.
 */
public class Producto {
    //Atributos
    private int idproducto;
    private String nombreproducto;
    private double precioproducto; 

//constructor
    public Producto(){
        
    }
    
    //Metodos de acceso

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public String getNombreproducto() {
        return nombreproducto;
    }

    public void setNombreproducto(String nombreproducto) {
        this.nombreproducto = nombreproducto;
    }

    public double getPrecioproducto() {
        return precioproducto;
    }

    public void setPrecioproducto(double precioproducto) {
        this.precioproducto = precioproducto;
    }
    
    
}