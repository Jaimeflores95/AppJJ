


package com.canteras.clases;
/**
 *
 * document   : claseEmpleado
    Created on : 23/02/2015, 11:48:47 AM
    Author     : AppJJ
    Descripción: clase que contiene los atributos de la tabla empleado y sus getter and setter.
 */

public class Empleado {

    //Atributos
    
    private String idempleado;
    private String password;
    private String nombrempleado;
    private int tipoempleado;
    private int edad;
    private String direccion;

    //constructor
    public Empleado(){
        
    }
    
    //Metodos de acceso
    public String getIdempleado() {
        return idempleado;
    }

    public void setIdempleado(String idempleado) {
        this.idempleado = idempleado;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombrempleado() {
        return nombrempleado;
    }

    public void setNombrempleado(String nombrempleado) {
        this.nombrempleado = nombrempleado;
    }

    public int getTipoempleado() {
        return tipoempleado;
    }

    public void setTipoempleado(int tipoempleado) {
        this.tipoempleado = tipoempleado;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

   
}