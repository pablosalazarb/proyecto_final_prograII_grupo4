package ClasesProject;

import Clases.LinkStart;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 * @author susan
 */
public class ProyectoModell {
    private int idp;
    private String project;
    private String description;
    private String date;
    private int manager;
    private int estatus;
    private String category;

    public ProyectoModell(int idp, String project, String description, String date, int manager, int estatus, String category) {
        this.idp = idp;
        this.project = project;
        this.description = description;
        this.date = date;
        this.manager = manager;
        this.estatus = estatus;
        this.category = category;
    }

    public int getIdp() {
        return idp;
    }

    public void setIdp(int idp) {
        this.idp = idp;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getManager() {
        return manager;
    }

    public void setManager(int manager) {
        this.manager = manager;
    }

    public int getEstatus() {
        return estatus;
    }

    public void setEstatus(int estatus) {
        this.estatus = estatus;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }


    
    
    
    
}

