/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author leo
 */
public class ConsultasUsuario extends Conexion {

     public boolean autenticacion(String usuario, String contraseña){
        PreparedStatement pst=null;
        ResultSet rs=null;
        try{
            String consulta ="select * from usuario where email=? and pass=?" ;
            pst=getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
            rs=pst.executeQuery();
            if(rs.absolute(1)){
                return true;
            }    
        }catch(Exception e){
            System.err.println("Error"+e);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if(pst !=null) pst.close();
                if(rs!=null) rs.close();
            }catch(Exception e){
                System.err.println("Error"+e);
            }
        }
        return false;
    }
    
    /*public static void main(String []args ){
        ConsultasUsuario co=new ConsultasUsuario();
        System.out.println(co.autenticacion("leonel@gmail.com", "123456789"));
    }*/
    public boolean registrar(String dni_usuario,String codigo_facultad,String nombre_usuario,String apellido_usuario,String email,String pass ){
        PreparedStatement pst=null;
        try{
            String consulta="insert into usuario (dni_usuario, codigo_facultad, nombre_usuario, apellido_usuario, email, pass) values (?,?,?,?,?,?)";
            pst=getConexion().prepareStatement(consulta);
            pst.setString(1, dni_usuario);
            pst.setString(2, codigo_facultad);
            pst.setString(3, nombre_usuario);
            pst.setString(4, apellido_usuario);
            pst.setString(5, email);
            pst.setString(6, pass);
            
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
        ConsultasUsuario co=new ConsultasUsuario();
        System.out.println(co.registrar("sdas","27","sdf","sdf","sdf@dsa","sdf"));
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
    
    /*public static void main(String []args ){
        ConsultasUsuario co=new ConsultasUsuario();
        System.out.println(co.editar("27","27","sdf","sdf","sdf@dsa","sad"));
    }*/
    
    public boolean eliminar(int id){
        PreparedStatement pst=null;
        try{
            String consulta="delete from usuario where idUsuario=?";
            pst=getConexion().prepareStatement(consulta);
            pst.setInt(1, id);
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

}
