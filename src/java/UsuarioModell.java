/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author susan
 */
public class UsuarioModell {
    private String user;
    private String pass;
    private String tipUsr;    

    public UsuarioModell(String user, String pass, String tipUsr) {

        this.user = user;
        this.pass = pass;
        this.tipUsr = tipUsr;
    }
   

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getTipUsr() {
        return tipUsr;
    }

    public void setTipUsr(String tipUsr) {
        this.tipUsr = tipUsr;
    }
    
    
    
    
    
    
}

