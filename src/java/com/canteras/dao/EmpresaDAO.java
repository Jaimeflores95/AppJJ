package com.canteras.dao;
/**
 *
 * document   : claseEmpresa
    Created on : 23/02/2015, 11:48:47 AM
    Author     : AppJJ
    Descripción: clase que contiene los metodos
 */
import com.canteras.clases.Cliente;
import com.canteras.clases.Empleado;
import com.canteras.clases.Producto;
import com.canteras.clases.Venta;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmpresaDAO {

    //atributos
    Connection con; //Este es un atributo para establecer una conexion a una base de datos
    Statement smt; //atributo para ejecutar sentencias SQL
    ResultSet rs; // Atributo que permite almacenar un query

    //construcutor
    public EmpresaDAO() {

    }

    //metodo para establecer la conexion 
    public void conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/canteras", "root", "");
        } catch (SQLException sqle) {
            System.out.println("Error: " + sqle);
        } catch (Exception e) { 
            System.out.println("Error" + e);
        }
    }

    //Metodo para desconectar la BD
    public void desconectar() {
        try {
            con.close();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }

    //metodo para verificar que exista el usuario y su password
    public Empleado validarEmpleado(String idempleado, String password) {
        Empleado e = new Empleado();
        conectar();
        int encontrado = 0;
        try {
            smt = con.createStatement();
            rs = smt.executeQuery("select * from empleados where (idempleado='" + idempleado + "') and (password='" + password + "')");

            rs.next();
            e.setIdempleado(rs.getString("idempleado"));
            e.setPassword(rs.getString("password"));
            e.setNombrempleado(rs.getString("nombrempleado"));
            e.setTipoempleado(rs.getInt("tipoempleado"));
            e.setEdad(rs.getInt("edad"));
            e.setDireccion(rs.getString("direccion"));
            encontrado = 1;

        } catch (SQLException sqle) {
            System.out.println("Error" + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return e;

        } else {
            return null;
        }
    }

    //metodo para insertar un empleado en una BD
    public void insertarEmpleado(Empleado e) {
        conectar();
        int a = 0;
        try {
            smt = con.createStatement();
            a = smt.executeUpdate("insert into empleados values ('" + e.getIdempleado() + "','" + e.getPassword() + "','" + e.getNombrempleado() + "'," + e.getTipoempleado() +  "," + e.getEdad()+  ",'" + e.getDireccion()+"')");
        } catch (SQLException sqle) {
            System.out.println("Error: " + sqle);
        }
        desconectar();
    }

    //Metodo para verificar que el ID deseado no esta en uso
    public boolean buscarIDEmpleado(String idempleado) {
        conectar();
        int encontrado = 0;
        try {
            smt = con.createStatement();
            rs = smt.executeQuery("select * from empleados where (idempleado='" + idempleado + "')");
            rs.next();
            if (rs.getRow() != 0) {
                encontrado = 1;

            }
        } catch (SQLException sqle) {
            System.out.println("Error: " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return true;
        } else {
            return false;
        }
    }

    //metodo para obtener un listado de empleado
    public List<Empleado> getEmpleados() {
        //declarar una variable local en la cual almacenaremos los registros
        List<Empleado> listaEmpleados = new ArrayList<Empleado>();

        conectar();
        int encontrado = 0;
        try {
            smt = con.createStatement();
            rs = smt.executeQuery("select * from empleados");
            while (rs.next()) {
                Empleado e = new Empleado();
                e.setIdempleado(rs.getString("idempleado"));
                e.setPassword(rs.getString("password"));
                e.setNombrempleado(rs.getString("nombrempleado"));
                e.setTipoempleado(rs.getInt("tipoempleado"));
                e.setEdad(rs.getInt("edad"));
                e.setDireccion(rs.getString("direccion"));

                listaEmpleados.add(e);
                encontrado = 1;

            }

        } catch (SQLException sqle) {
            System.out.println("Error " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return listaEmpleados;
        } else {
            return null;
        }
    }
    
    //metodo para buscar un empleado en la base de datos
    public Empleado buscarEmpleado(String idempleado){
        Empleado e=new Empleado();
        conectar();
        int encontrado=0;
        
        try{
            smt=con.createStatement();
            rs=smt.executeQuery("select * from empleados where (idempleado='"+idempleado+"')");
            rs.next();
            if (rs.getRow()!=0) {
                e.setIdempleado(rs.getString("idempleado"));
                e.setPassword(rs.getString("password"));
                e.setNombrempleado(rs.getString("nombrempleado"));
                e.setTipoempleado(rs.getInt("tipoempleado"));
                e.setEdad(rs.getInt("edad"));
                e.setDireccion(rs.getString("direccion"));
                encontrado=1;
            }
        }catch (SQLException sqle) {
            System.out.println("Error " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return e;
        } else {
            return null;
        }
    }
    
 //modificar
    public void modificarEmpleado(Empleado e){
        conectar();
        int a=0;
        try{
            smt=con.createStatement();
            a=smt.executeUpdate("update empleados"
                    + " set nombrempleado='"+e.getNombrempleado()+"'"
                    + ",password='"+e.getPassword()+"'"
                    + ",tipoempleado="+e.getTipoempleado()+""
                    + ",edad="+e.getEdad()+""
                     + ",direccion='"+e.getDireccion()+"'"
                    + " where (idempleado='"+e.getIdempleado()+"')");
        }
        catch(SQLException sqle){
            System.out.println("Error: "+sqle);
        }
        desconectar();
    }
    //Metodo para eliminar empleado
    public void eliminarempleado(String idempleado){
        conectar();
        int a=0;
        try{
            smt=con.createStatement();
            a=smt.executeUpdate("delete from empleados where (idempleado='"+idempleado+"')");
        }
        catch(SQLException sqle){
            System.out.println("Error: "+sqle);
        }
        desconectar();
    }
    
    
    
    
    ///METODOS DE InSERSION Cliente-----!/////
    
     //metodo para verificar que exista el EL cliente
    
     //metodo para insertar un cliente en una BD
    public void insertarCliente(Cliente c) {
        conectar();
        int a = 0;
        try {
            smt = con.createStatement();
            a = smt.executeUpdate("insert into clientes values (" + null+ ",'" + c.getNombrecliente() + "','" + c.getApellidoscliente()+ "','" + c.getDomiciliocliente() + "','" + c.getEmailcliente() + "','" + c.getTelefonocliente() + "','" + c.getRFC()+"')");
        } catch (SQLException sqle) {
            System.out.println("Error: " + sqle);
        }
        desconectar();
    }

    //Metodo para verificar que el ID deseado no esta en uso
    public boolean buscarIDCliente(int idcliente) {
        conectar();
        int encontrado = 0;
        try {
            smt = con.createStatement();
            rs = smt.executeQuery("select * from clientes where (idcliente='" + idcliente + "')");
            rs.next();
            if (rs.getRow() != 0) {
                encontrado = 1;

            }
        } catch (SQLException sqle) {
            System.out.println("Error: " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return true;
        } else {
            return false;
        }
        
        
    }
    //metodo para obtener un listado de clientes
    public List<Cliente> getClientes() {
        //declarar una variable local en la cual almacenaremos los registros
        List<Cliente> listaClientes = new ArrayList<Cliente>();

        conectar();
        int encontrado = 0;
        try {
            smt = con.createStatement();
            rs = smt.executeQuery("select * from clientes");
            while (rs.next()) {
                Cliente c = new Cliente();
                c.setIdcliente(rs.getInt("idcliente"));
                c.setNombrecliente(rs.getString("nombrecliente"));
                c.setApellidoscliente(rs.getString("apellidoscliente"));
                c.setDomiciliocliente(rs.getString("domiciliocliente"));
                c.setEmailcliente(rs.getString("emailcliente"));
                c.setTelefonocliente(rs.getString("telefonocliente"));
                c.setRFC(rs.getString("RFC"));

                listaClientes.add(c);
                encontrado = 1;

            }

        } catch (SQLException sqle) {
            System.out.println("Error " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return listaClientes;
        } else {
            return null;
        }
    }
    
    

    //metodo para buscar un cliente en la base de datos
    public Cliente buscarCliente(int idcliente){
        Cliente c=new Cliente();
        conectar();
        int encontrado=0;
        
        try{
            smt=con.createStatement();
            rs=smt.executeQuery("select * from clientes where (idcliente='"+idcliente+"')");
            rs.next();
            if (rs.getRow()!=0) {
                c.setIdcliente(rs.getInt("idcliente"));
                c.setNombrecliente(rs.getString("nombrecliente"));
                c.setApellidoscliente(rs.getString("apellidoscliente"));
                c.setDomiciliocliente(rs.getString("domiciliocliente"));
                c.setEmailcliente(rs.getString("emailcliente"));
                c.setTelefonocliente(rs.getString("telefonocliente"));
                c.setRFC(rs.getString("RFC"));
                encontrado=1;
            }
        }catch (SQLException sqle) {
            System.out.println("Error " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return c;
        } else {
            return null;
        }
    }
    
    //modificar cliente
    public void modificarCliente(Cliente c){
        conectar();
        int a=0;
        try{
            smt=con.createStatement();
            a=smt.executeUpdate("update clientes"
                    + " set nombrecliente='"+c.getNombrecliente()+"'"
                    + ",apellidoscliente='"+c.getApellidoscliente()+"'"
                    + ",domiciliocliente='"+c.getDomiciliocliente()+"'"
                    + ",emailcliente='"+c.getEmailcliente()+"'"
                    + ",telefonocliente='"+c.getTelefonocliente()+"'"
                    + ",RFC='"+c.getRFC()+"'"
                    + " where (idcliente="+c.getIdcliente()+")");
        }
        catch(SQLException sqle){
            System.out.println("Error: "+sqle);
        }
        desconectar();
    }
    
    
    //Metodo para eliminar Cliente
    public void eliminarCliente(int idcliente){
        conectar();
        int a=0;
        try{
            smt=con.createStatement();
            a=smt.executeUpdate("delete from clientes where (idcliente='"+idcliente+"')");
        }
        catch(SQLException sqle){
            System.out.println("Error: "+sqle);
        }
        desconectar();
    }
    
    
    
    
    
    
    //PRODUCTO-----------------------------------------------
    
     ///METODOS DE InSERSION Producto-----!/////
    
     //metodo para verificar que exista el producto
    
     //metodo para insertar un producto en una BD
    public void insertarProducto(Producto p) {
        conectar();
        int a = 0;
        try {
            smt = con.createStatement();
            a = smt.executeUpdate("insert into producto values "
                    + "(" + null+ ",'" + p.getNombreproducto() + "'," + p.getPrecioproducto()+")");
        } catch (SQLException sqle) {
            System.out.println("Error: " + sqle);
        }
        desconectar();
    }

    //Metodo para verificar que el ID deseado no esta en uso
    public boolean buscarIDProducto(int idproducto) {
        conectar();
        int encontrado = 0;
        try {
            smt = con.createStatement();
            rs = smt.executeQuery("select * from producto where (idproducto='" + idproducto + "')");
            rs.next();
            if (rs.getRow() != 0) {
                encontrado = 1;

            }
        } catch (SQLException sqle) {
            System.out.println("Error: " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return true;
        } else {
            return false;
        }  
    }
    
    
    
    //metodo para obtener un listado de productos
    public List<Producto> getProducto() {
        //declarar una variable local en la cual almacenaremos los registros
        List<Producto> listaProductos = new ArrayList<Producto>();

        conectar();
        int encontrado = 0;
        try {
            smt = con.createStatement();
            rs = smt.executeQuery("select * from producto");
            while (rs.next()) {
                Producto p = new Producto();
                p.setIdproducto(rs.getInt("idproducto"));
                p.setNombreproducto(rs.getString("nombreproducto"));
                p.setPrecioproducto(rs.getDouble("precioproducto"));
               

                listaProductos.add(p);
                encontrado = 1;

            }

        } catch (SQLException sqle) {
            System.out.println("Error " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return listaProductos;
        } else {
            return null;
        }
    }
    
    

    //metodo para buscar un producto en la base de datos
    public Producto buscarProducto(int idproducto){
        Producto p=new Producto();
        conectar();
        int encontrado=0;
        
        try{
            smt=con.createStatement();
            rs=smt.executeQuery("select * from producto where (idproducto='"+idproducto+"')");
            rs.next();
            if (rs.getRow()!=0) {
                p.setIdproducto(rs.getInt("idproducto"));
                p.setNombreproducto(rs.getString("nombreproducto"));
                p.setPrecioproducto(rs.getDouble("precioproducto"));
                
                encontrado=1;
            }
        }catch (SQLException sqle) {
            System.out.println("Error " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return p;
        } else {
            return null;
        }
    }
    
    //Modificar
    public void modificarProducto(Producto p){
        conectar();
        int a=0;
        try{
            smt=con.createStatement();
            a=smt.executeUpdate("update producto"
                    + " set nombreproducto='"+p.getNombreproducto()+"'"
                    + ",precioproducto='"+p.getPrecioproducto()+"'"              
                    + " where (idproducto="+p.getIdproducto()+")");
        }
        catch(SQLException sqle){
            System.out.println("Error: "+sqle);
        }
        desconectar();
    }
    
    
    
    //Metodo para eliminar producto
    public void eliminarProducto(int idproducto){
        conectar();
        int a=0;
        try{
            smt=con.createStatement();
            a=smt.executeUpdate("delete from producto where (idproducto='"+idproducto+"')");
        }
        catch(SQLException sqle){
            System.out.println("Error: "+sqle);
        }
        desconectar();
    }
    
    
    
   
    
    
     //Venta-----------------------------------------------
    
     ///METODOS DE InSERSION Venta-----!/////
    
     //metodo para verificar que exista la venta 
    
     //metodo para insertar una venta en una BD
    public void insertarVenta(Venta v) {
        conectar();
        int a = 0;
        try {
            smt = con.createStatement();
            a = smt.executeUpdate("insert into ventas values "
                    + "(" + null+ "," + v.getCantidadproducto()+ ",'" + v.getFechaventa() + "'," + v.getTotalventaproducto() + ")");
        } catch (SQLException sqle) {
            System.out.println("Error: " + sqle);
        }
        desconectar();
    }

    //Metodo para verificar que el ID deseado no esta en uso
    public boolean buscarIDVenta(int id_venta) {
        conectar();
        int encontrado = 0;
        try {
            smt = con.createStatement();
            rs = smt.executeQuery("select * from ventas where (id_venta='" + id_venta + "')");
            rs.next();
            if (rs.getRow() != 0) {
                encontrado = 1;

            }
        } catch (SQLException sqle) {
            System.out.println("Error: " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return true;
        } else {
            return false;
        }    
    }
    
    
    //metodo para obtener un listado de ventas
    public List<Venta> getVentas() {
        //declarar una variable local en la cual almacenaremos los registros
        List<Venta> listaVentas = new ArrayList<Venta>();

        conectar();
        int encontrado = 0;
        try {
            smt = con.createStatement();
            rs = smt.executeQuery("select * from ventas");
            while (rs.next()) {
                Venta v = new Venta();
                v.setId_venta(rs.getInt("id_venta"));
                v.setCantidadproducto(rs.getInt("cantidadproducto"));
                v.setFechaventa(rs.getString("fechaventa"));
                v.setTotalventaproducto(rs.getDouble("totalventaproducto"));
                

                listaVentas.add(v);
                encontrado = 1;

            }

        } catch (SQLException sqle) {
            System.out.println("Error " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return listaVentas;
        } else {
            return null;
        }
    }
    
    

    //metodo para buscar una venta en la base de datos
    public Venta buscarVenta(int id_venta){
        Venta v=new Venta();
        conectar();
        int encontrado=0;
        
        try{
            smt=con.createStatement();
            rs=smt.executeQuery("select * from ventas where (id_venta='"+id_venta+"')");
            rs.next();
            if (rs.getRow()!=0) {
                v.setId_venta(rs.getInt("id_venta"));
                v.setCantidadproducto(rs.getInt("cantidadproducto"));
                v.setFechaventa(rs.getString("fechaventa"));
                v.setTotalventaproducto(rs.getDouble("totalventaproducto"));
                encontrado=1;
            }
        }catch (SQLException sqle) {
            System.out.println("Error " + sqle);
        }
        desconectar();
        if (encontrado != 0) {
            return v;
        } else {
            return null;
        }
    }
    
     //Modificar
    public void modificarVenta(Venta v){
        conectar();
        int a=0;
        try{
            smt=con.createStatement();
            a=smt.executeUpdate("update ventas"
                    + ",cantidadproducto="+v.getCantidadproducto()+""
                    + ",fechaventa='"+v.getFechaventa()+"'"
                    + ",totalventaproducto="+v.getTotalventaproducto()+""
                    + " where (id_venta='"+v.getId_venta()+"')");
        }
        catch(SQLException sqle){
            System.out.println("Error: "+sqle);
        }
        desconectar();
    }
    
    
    //Metodo para eliminar venta
    public void eliminarventa(int id_venta){
        conectar();
        int a=0;
        try{
            smt=con.createStatement();
            a=smt.executeUpdate("delete from ventas where (id_venta='"+id_venta+"')");  //nos falta una S en from ventass
        }
        catch(SQLException sqle){
            System.out.println("Error: "+sqle);
        }
        desconectar();
    }
    
    
    
    //Metodo para obtener la conexión
    public Connection miConexion(){
        return this.con;
    }
  
  
}