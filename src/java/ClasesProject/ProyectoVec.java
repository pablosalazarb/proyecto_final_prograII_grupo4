package ClasesProject;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


import Clases.LinkStart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author susan
 */
public class ProyectoVec {
      ProyectoModell[] tabPro;
    int ind;
    private LinkStart linkBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null; 
    
    public ProyectoVec(){
        this.tabPro = new ProyectoModell[100];
        this.ind=0;
    }
    
     public void savePro(ProyectoModell proyecto){
        this.tabPro[this.ind]=proyecto;  
        this.ind=this.ind+1;
    }
    
    public ProyectoModell[] gimmePro(){
        return this.tabPro;
    }
   
    public void starConex(){
        linkBD= new LinkStart();
        conexion=linkBD.conectar();
    }
    
    public boolean saveproBD(ProyectoModell proyecto){        
        String sql = "INSERT INTO mydb.proyecto(id, nombre_proyecto, descripcion, fecha_creacion, usuario_id, estado_id, categoria_proyecto_id)";
             sql += " VALUES( ?,?,?,?,?,?,?)"; 
        try{
            starConex();
            statement = conexion.prepareStatement(sql);
            statement.setInt(1, proyecto.getIdp());
            statement.setString(2, proyecto.getProject());
            statement.setString(3, proyecto.getDescription());
            statement.setString(4, proyecto.getDate());
            statement.setInt(5, proyecto.getManager());
            statement.setInt(6, proyecto.getEstatus());
            statement.setString(7, proyecto.getCategory());
             int resultado = statement.executeUpdate(); 
                if(resultado > 0){
                    return true;
                }else{
                    return false;
                }
        }catch(SQLException e){
            String error = e.getMessage();  
            return false;
        }    
    }
    
   
    
    public void bdView(StringBuffer out){   
        String sql="select * from mydb.proyecto";
        try{
        starConex();
        out.setLength(0);
        statement= conexion.prepareStatement(sql);                        
        result = statement.executeQuery();            
            if (result!=null){
                while (result.next()){
                out.append("<tr>");
                out.append("<td >").append(result.getString("id")).append("</td>");
                out.append("<td >").append(result.getString("nombre_proyecto")).append("</td>");
                out.append("<td >").append(result.getString("descripcion")).append("</td>");
                out.append("<td >").append(result.getString("fecha_creacion")).append("</td>");
                out.append("<td >").append(result.getString("usuario_id")).append("</td>");
                out.append("<td >").append(result.getString("estado_id")).append("</td>");
                out.append("<td >").append(result.getString("categoria_proyecto_id")).append("</td>");
                out.append("<td id=\"").append(result.getString("id"))
                        .append("\"  onclick=\"eliminaruser(this.id);\">") 
                        .append(" <a class=\"btn btn-danger\"'> <i class=\"bi bi-trash\"></i> </a>"
                                + " <td></tr>");
                }
            }else{out.append("error al consultar");}
        }catch(SQLException ex){ex.printStackTrace();}
    }
    
     public String eliminarproBd(int codi){        
        String sql = "DELETE FROM proyecto WHERE id="+codi;              
       try{     
            starConex();
            statement = conexion.prepareStatement(sql); 
            int resultado = statement.executeUpdate();
            if(resultado > 0){
                return String.valueOf(resultado);
            }else{
                return String.valueOf(resultado);
            }
        }catch(SQLException e){ 
            return e.getMessage();
        }
    }

    
    
}
