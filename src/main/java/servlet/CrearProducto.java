/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Util.Consultas;
import Util.Data;
import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

/**
 *
 * @author HP 240 G8
 */
@WebServlet(name = "CrearProducto", urlPatterns = {"/CrearProducto"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 5242880,
        maxRequestSize = 20971520
)
public class CrearProducto extends HttpServlet {

    private final String UPLOAD_PATH = "img_productos" + File.separator;

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

            String absolutePath = getServletContext().getRealPath("/") + File.separator + "img_productos";
            String relativePath = "img_productos";

            UUID uuid = UUID.randomUUID();

            String AfileName = absolutePath + File.separator + uuid.toString() + ".png";
            String RfileName = relativePath + "/" + uuid.toString() + ".png";

            for (Part part : request.getParts()) {
                File f = new File(relativePath);

                if (!f.exists()) {
                    f.mkdir();
                }

                InputStream is = part.getInputStream();

                OutputStream os = new FileOutputStream(new File(AfileName));

                is.transferTo(os);

            }

            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");
            String precio = request.getParameter("precio");
            Consultas c = new Consultas();

            Gson gson = new Gson();

            Data<String> d = new Data();

            if (c.agregarProducto(nombre, descripcion, RfileName, Float.parseFloat(precio))) {
                d.data = "Producto agregado con exito";
            } else {
                d.data = "Error al agregar el producto";
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
