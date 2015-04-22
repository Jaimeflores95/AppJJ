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
public class Compra {
    //Atributos
    private int idcompra;
    private int idcli;
    private String nombreproducto;
    private String medidas;
    private String fechacompra;
    private double totalcompra;
   

//constructor
    public Compra(){
        
    }
    
    //Metodos de acceso

    public int getIdcompra() {
        return idcompra;
    }

    public void setIdcompra(int idcompra) {
        this.idcompra = idcompra;
    }

    public int getIdcli() {
        return idcli;
    }

    public void setIdcli(int idcli) {
        this.idcli = idcli;
    }

    public String getNombreproducto() {
        return nombreproducto;
    }

    public void setNombreproducto(String nombreproducto) {
        this.nombreproducto = nombreproducto;
    }


    public String getMedidas() {
        return medidas;
    }

    public void setMedidas(String medidas) {
        this.medidas = medidas;
    }

    public String getFechacompra() {
        return fechacompra;
    }

    public void setFechacompra(String fechacompra) {
        this.fechacompra = fechacompra;
    }

    public double getTotalcompra() {
        return totalcompra;
    }

    public void setTotalcompra(double totalcompra) {
        this.totalcompra = totalcompra;
    }

   
    
   
    
    
}