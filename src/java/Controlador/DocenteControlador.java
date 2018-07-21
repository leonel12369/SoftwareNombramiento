/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;

/**
 *
 * @author leone
 */
public class DocenteControlador extends Conexion{
    public boolean registrar(String dni_docente,String codigo_facultad,String nombre_docente,String apellido_docente,String email,String telefono,String direccion,String fecha_nacimiento,String edad){
        PreparedStatement pst=null;
        try{
            String consulta="insert into docente (dni_docente, codigo_facultad, nombre_docente, apellido_docente, email, telefono, direccion, fecha_nacimiento, edad) values (?,?,?,?,?,?,?,?,?)";
            pst=getConexion().prepareStatement(consulta);
            pst.setString(1, dni_docente);
            pst.setString(2, codigo_facultad);
            pst.setString(3, nombre_docente);
            pst.setString(4, apellido_docente);
            pst.setString(5, email);
            pst.setString(6, telefono);
            pst.setString(7, direccion);
            pst.setString(8, fecha_nacimiento);
            pst.setString(9, edad);
 
            if(pst.executeUpdate()==1){
                    return true;
            }
        }catch(Exception e){   
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
            }catch(Exception e){
                System.err.println("Error"+e);
            }
        }
        return false;
    }
    
    /*public static void main(String []args ){
        DocenteControlador co=new DocenteControlador();
        System.out.println(co.registrar("12345","27","jorge","Ramos","sdf@dsa","7878","asdasd","1995-01-29","12"));
    }*/
    public boolean registrarDetalleDocente(String dni_docente,String nombre_departamento,String area,String regimen_dedicacion,String asignatura,String titulo,String grado,String tipo_nombramiento,String facultad){
        PreparedStatement pst=null;
        try{
 
            String consulta="insert into detalle_docente (dni_docente, nombre_departamento, area, regimen_dedicacion, asignatura, titulo, grado, tipo_nombramiento, facultad) values (?,?,?,?,?,?,?,?,?)";
            pst=getConexion().prepareStatement(consulta);
            pst.setString(1, dni_docente);
            pst.setString(2, nombre_departamento);
            pst.setString(3, area);
            pst.setString(4, regimen_dedicacion);
            pst.setString(5, asignatura);
            pst.setString(6, titulo);
            pst.setString(7, grado);
            pst.setString(8, tipo_nombramiento);
            pst.setString(9, facultad);
            
            if(pst.executeUpdate()==1){
                    return true;
            }
        }catch(Exception e){   
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
            }catch(Exception e){
                System.err.println("Error"+e);
            }
        }
        return false;
    }
    /*public static void main(String []args ){
        DocenteControlador co=new DocenteControlador();
        System.out.println(co.registrarDetalleDocente("12345","2asdas7","mate","asdasd","mate","dcotor","master","pirnicpal","medcina"));
    }*/






    
    public boolean editar(String codigo_facultad,String nombre_usuario,String apellido_usuario,String email,String pass,String dni_usuario ){
        PreparedStatement pst=null;
        try{
            String consulta="update usuario set codigo_facultad=?, nombre_usuario=?, apellido_usuario=?, email=?, pass=? "+" where dni_usuario=?";
            pst=getConexion().prepareStatement(consulta);
            pst.setString(1,codigo_facultad); 
            pst.setString(2,nombre_usuario);
            pst.setString(3,apellido_usuario);
            pst.setString(4,email);
            pst.setString(5,pass);
            pst.setString(6,dni_usuario);
            //
            if(pst.executeUpdate()==1){
                return true;
            }
        }
        catch(Exception e){

        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
            }catch(Exception e){
                System.err.println("Error"+e);
            }            
        }
        return false;
    }
}
