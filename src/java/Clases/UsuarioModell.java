package Clases;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 * @author susan
 */
public class UsuarioModell {
    private int idu;
    private String user;
    private String mail;
    private String pass;
    private int tipUsr;    

    public UsuarioModell( int idu, String user,String mail, String pass, int tipUsr) {
        this.idu = idu;
        this.user = user;
        this.mail = mail;
        this.pass = pass;
        this.tipUsr = tipUsr;
    }

    public int getIdu() {
        return idu;
    }

    public void setIdu(int idu) {
        this.idu = idu;
    }
   
    

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
   
    
    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getTipUsr() {
        return tipUsr;
    }

    public void setTipUsr(int tipUsr) {
        this.tipUsr = tipUsr;
    }


    
    
    
    
}

