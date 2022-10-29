/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import Clases.LinkStart;
import Clases.UsuarioVec;
import Clases.UsuarioModell;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * @author Suzzanne Acevedo
 */
@WebServlet(urlPatterns = {"/ServletUser"})
public class ServletUser extends HttpServlet {
    
    UsuarioModell usuarios;
    UsuarioVec regUsr;
    UsuarioModell[] registruser;
    StringBuffer objOut = new StringBuffer();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            regUsr=new UsuarioVec();
            
            String control = request.getParameter("control");
            
            if(control.toUpperCase().equals("GUARDAR")){
            usuarios=new UsuarioModell(
            Integer.parseInt(request.getParameter("idu")),
            request.getParameter("user"),
            request.getParameter("mail"),
            request.getParameter("pass"),
            Integer.parseInt(request.getParameter("tipUsr")));
            
            regUsr.saveUsr(usuarios);
            }else if (control.toUpperCase().equals("ELIMINAR")){
             int codDelete = Integer.parseInt(request.getParameter("id"));
             regUsr.eliminaruserBd(codDelete);
            }

        if(regUsr.saveuserBD(usuarios)){out.println(1);}else{out.println(0);}
        regUsr.bdView(objOut);
        out.write(objOut.toString());

        }
             
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
