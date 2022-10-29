
import Clases.LinkStart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author susan
 */
public class Usuario {
    private LinkStart conectorBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null;
    
    public Usuario(){
        this.conectorBD=new LinkStart();
    }
    
    public String validarUsuario(String user, String pass){
        String sql = "SELECT * FROM usuario WHERE correo_electronico = '" + user + "' AND password = '"+pass+"'";
        try{
            this.conexion = this.conectorBD.conectar();
            this.statement = conexion.prepareStatement(sql);
            this.result=this.statement.executeQuery();
            if(result != null){
                 String usuarioEncontrado="";
                while (result.next()){
                    usuarioEncontrado= result.getString("correo_electronico");
                }
                return usuarioEncontrado;
            }
            return "Usuario no encontrado";
        }
        catch(SQLException e){
           return e.getMessage();
        }
    }
}