/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.UUID;

/**
 *
 * @author natsu
 */
public class Image {

    /**
     * Metodo para guardar una imagen en disco
     *
     * @param rutas rutas donde se guardara el archivo
     * @param part Parte donde se encuentra el archivo a guardar
     * @return regresa la ruta relativa del archivo con el nombre generado
     * @throws java.io.FileNotFoundException
     */
    public static String guardarImagen(Map<String, String> rutas, Part part)
            throws FileNotFoundException, IOException {

        UUID uuid = UUID.randomUUID();

        String rutaAbsoluta = rutas.get("absoluta");
        String rutaRelativa = rutas.get("relativa");

        File f = new File(rutaAbsoluta);

        if (!f.exists()) {
            f.mkdir();
        }

        InputStream is = part.getInputStream();

        rutaAbsoluta += "/" + uuid.toString() + ".png";
        OutputStream os = new FileOutputStream(new File(rutaAbsoluta));

        is.transferTo(os);

        rutaRelativa += "/" + uuid.toString() + ".png";

        return rutaRelativa;
    }

}
