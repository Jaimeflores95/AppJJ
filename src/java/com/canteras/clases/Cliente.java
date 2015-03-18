/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.canteras.clases;

/**
 *
 * document   : claseCliente
    Created on : 23/02/2015, 11:48:47 AM
    Author     : AppJJ
    Descripción: clase que contiene los atributos de la tabla cliente y sus getter and setter.
 */
public class Cliente {
    //Atributos
    private int idcliente;
    private String nombrecliente;
    private String apellidoscliente;
    private String domiciliocliente;
    private String emailcliente;
    private String telefonocliente;
    private String RFC;

//constructor
    public Cliente(){
        
    }
    
    //Metodos de acceso

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public String getNombrecliente() {
        return nombrecliente;
    }

    public void setNombrecliente(String nombrecliente) {
        this.nombrecliente = nombrecliente;
    }

    public String getApellidoscliente() {
        return apellidoscliente;
    }

    public void setApellidoscliente(String apellidoscliente) {
        this.apellidoscliente = apellidoscliente;
    }

    public String getDomiciliocliente() {
        return domiciliocliente;
    }

    public void setDomiciliocliente(String domiciliocliente) {
        this.domiciliocliente = domiciliocliente;
    }

    public String getEmailcliente() {
        return emailcliente;
    }

    public void setEmailcliente(String emailcliente) {
        this.emailcliente = emailcliente;
    }

    public String getTelefonocliente() {
        return telefonocliente;
    }

    public void setTelefonocliente(String telefonocliente) {
        this.telefonocliente = telefonocliente;
    }

    public String getRFC() {
        return RFC;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
    }

    
    
}