/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

import java.sql.PreparedStatement;

/**
 *
 * @author natsu
 */
public class Consultas extends Conexion{
    
    
    public boolean agregarUsuario(String nombre, String pass, boolean isAdmin) {
        PreparedStatement st = null;
        
        try {
            String consulta = "INSERT INTO Usuarios(Nombre, Passcode, isAdmin) VALUES(?, ?, ?)";
            
            st = this.getConexion().prepareStatement(consulta);
            
            st.setString(1, nombre);
            st.setString(2, pass);
            st.setBoolean(3, isAdmin);
            
            return st.executeUpdate() == 1;
            
        } catch (Exception e) {
            
            System.out.println(e.getMessage());
            
        } finally {
            
            try {
                
                if (st != null) {
                    st.close();
                }
                
            } catch (Exception e) {
            }
            
        }
        
        
        return false;
    }
    
}
