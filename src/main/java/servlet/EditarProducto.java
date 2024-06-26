/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Util.Consultas;
import Util.Data;
import Util.Image;
import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author HP 240 G8
 */
@WebServlet(name = "EditarProducto", urlPatterns = {"/EditarProducto"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 5242880,
        maxRequestSize = 20971520
)
public class EditarProducto extends HttpServlet {

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
        response.setContentType("application/json");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String id = request.getParameter("idProducto");
            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");
            String precio = request.getParameter("precio");

            Consultas c = new Consultas();

            String imagen = "";
            for (Part p : request.getParts()) {

                if (p.getContentType() == null || !p.getContentType().contains("image")) {
                    continue;
                }

                Map<String, String> rutas = new HashMap();
                rutas.put(
                        "absoluta",
                        getServletContext().getRealPath("/") + File.separator + "img_productos"
                );
                rutas.put(
                        "relativa",
                        "img_productos"
                );

                imagen = Image.guardarImagen(rutas, p);
            }

            Data d = new Data();
            Gson gson = new Gson();

            //            Codigo generico para enviar el resultado al cliente
            if (c.editarProducto(Integer.parseInt(id), nombre, imagen, descripcion, precio)) {
                d.data = "El producto se actualizó con exito";
            } else {
                d.data = "Hubó un error al actualizar el producto";
            }

            out.write(gson.toJson(d));

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
