
import Utilidades.ConexionBaseDeDatos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Pablosalazarbr
 */
public class Usuario {
    private ConexionBaseDeDatos conectorBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null;
    
    public Usuario(){
        this.conectorBD=new ConexionBaseDeDatos();
    }
    
    public String validarUsuario(String user, String pass){
        String sql = "SELECT * FROM usuario WHERE usuario = '" + user + "' AND contrasenia = '"+pass+"'";
        try{
            this.conexion = this.conectorBD.conectar(); //Abrimos la conexion sql
            this.statement = conexion.prepareStatement(sql); //Preparamos la consulta a realizar
            this.result=this.statement.executeQuery(); //Ejcutamos el query sql y recibimos un resultado
            //Si el resultado NO es nulo, entonces...
            if(result != null){
                String usuarioEncontrado=""; //Creamos la variable string del usuario encontrado
                //Mientras el resultado sea verdadero (en el caso que obtengamos un registro)
                while (result.next()){
                    usuarioEncontrado= result.getString("usuario"); //Almacenamos el nombre del usuario en la variable usuarioencontrado
                }
                return usuarioEncontrado; //Devolvemos como resultado la vvariable usuarioencontrado
            }
            return "Usuario no encontrado"; //Caso contrario devolvemos un texto de usuario no encontrado
        }
        catch(SQLException e){
           return e.getMessage(); //Guardamos el mensaje de error si lo hubiera
        }
    }
}
