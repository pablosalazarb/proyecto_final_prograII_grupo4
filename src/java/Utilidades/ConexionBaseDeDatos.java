/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Pablosalazarbr
 */
public class ConexionBaseDeDatos {
    private String url="jdbc:mysql://127.0.0.1:3307/mydb";//url de MySQL
    private String usuario="root"; // usuario de mysql local
    private String clave="1234"; //Password del usuario mysql
    private Connection conexion=null; //Seteamos una variable para validar el estado de conexion, inicialmente null
    
    //Funcion para intentar una conexion a la bd
    public Connection conectar(){   
        try{
            Class.forName("com.mysql.jdbc.Driver"); //Obtenemos el drivermanager para conexion
            conexion=DriverManager.getConnection( url, usuario,clave); //Ejecutamos una conexion a la bd
        }  catch (SQLException ex) {
            ex.printStackTrace(); //Si existiera un error en la ejecucion sql lo almacenamos
        } catch (ClassNotFoundException ex) {   
           ex.printStackTrace(); //Si no encontraramos la clase para la conexion almacenamos el error obtenido
        }         
        return conexion; //Devolvemos el estado de la conexion     
    }
    
}
