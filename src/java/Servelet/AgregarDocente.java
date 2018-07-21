/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import Controlador.DocenteControlador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author leone
 */
public class AgregarDocente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
        String bandera=request.getParameter("dni_docente");   
        String nombre_docente=request.getParameter("nombre_docente");
        String apellido_docente=request.getParameter("apellido_docente");
        String telefono=request.getParameter("telefono");
        String dni_docente=request.getParameter("dni_docente");
        String email=request.getParameter("email");
        String direccion=request.getParameter("direccion");
        String fecha_nacimiento=request.getParameter("fecha_nacimiento");
        String edad=request.getParameter("edad");
        String codigo_facultad=request.getParameter("codigo_facultad");
        String facultad=request.getParameter("facultad");
        String nombre_departamento=request.getParameter("nombre_departamento");
        String area=request.getParameter("area");
        String tipo_nombramiento=request.getParameter("tipo_nombramiento");
        String regimen_dedicacion=request.getParameter("regimen_dedicacion");
        String asignatura=request.getParameter("asignatura");
        String grado=request.getParameter("grado");
        String titulo=request.getParameter("titulo");
        
        DocenteControlador consulta=new DocenteControlador();
        consulta.registrar(dni_docente, codigo_facultad, nombre_docente, apellido_docente, email, telefono,direccion,fecha_nacimiento,edad);
         
        if(consulta.registrarDetalleDocente(bandera, nombre_departamento, area, regimen_dedicacion, asignatura, titulo, grado, tipo_nombramiento, facultad)){
            response.sendRedirect("Contenido.jsp");
        }    
        else{
            response.sendRedirect("FormularioInscripcion.jsp");
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
