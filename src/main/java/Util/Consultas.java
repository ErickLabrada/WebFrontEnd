/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

import Dominio.Producto;
import Dominio.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
                
                if (this.getConexion() != null) {
                    this.getConexion().close();
                }
                
            } catch (Exception e) {
                
                System.out.println(e.getMessage());
                
            }
            
        }
        
        
        return false;
    }
    
    public boolean eliminarUsuario(String nombre) {
        PreparedStatement st = null;
        
        try {
            String consulta = "DELETE FROM Usuarios WHERE Nombre=?";
            
            st = this.getConexion().prepareStatement(consulta);
            
            st.setString(1, nombre);
            
            return st.executeUpdate() == 1;
            
        } catch (Exception e) {
            
            System.out.println(e.getMessage());
            
        } finally {
            
            try {
                
                if (st != null) {
                    st.close();
                }
                
                if (this.getConexion() != null) {
                    this.getConexion().close();
                }
                
            } catch (Exception e) {
                
                System.out.println(e.getMessage());
                
            }
            
        }
        
        
        return false;
    }
    
    public boolean editarUsuario(String oldName, String nombre, String Passcode, boolean isAdmin) {
        
        Usuario s = obtenerUsuario(oldName);
        
        if (s == null) {
            return false;
        }
        
        PreparedStatement st = null;
        
        try {
            String sql = "UPDATE Usuarios SET Nombre=?, Passcode=?, isAdmin=? WHERE Nombre=?";
            
            st = this.getConexion().prepareStatement(sql);
            
            st.setString(1, nombre);
            st.setString(2, Passcode);
            st.setBoolean(3, isAdmin);
            st.setString(4, oldName);
            
            return st.executeUpdate() == 1;
            
        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                
                if (st != null) {
                    st.close();
                }
                
                if (this.getConexion() != null) {
                    this.getConexion().close();
                }
                
            } catch (Exception e) {
                
                System.out.println(e.getMessage());
                
            }
        }
        
        return false;
    }
    
    public Usuario obtenerUsuario(String nombre) {
        PreparedStatement st = null;
        ResultSet rs = null;
        Usuario us = null;
        
        try {
            
            String consulta = "SELECT * FROM Usuarios WHERE Nombre=?";
            
            st = this.getConexion().prepareStatement(consulta);
            
            st.setString(1, nombre);
            
            rs = st.executeQuery();
            
            if (rs.next()) {
                us = new Usuario(rs.getInt("Usuario_id"), rs.getString("Nombre"), "", false);
            }
            return us;
        } catch (Exception e) {
            
            System.out.println(e.getMessage());
            
        } finally {
            
            try {
                
                if (rs != null) {
                    rs.close();
                }
                
                if (st != null) {
                    st.close();
                }
                
                if (this.getConexion() != null) {
                    this.getConexion().close();
                }
                
            } catch (Exception e) {
                
                System.out.println(e.getMessage());
                
            }
            
        }
        
        
        return us;
    }
            
    public boolean iniciarSesion(String nombre, String pass, boolean isAdmin) {
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            
            String consulta = "SELECT * FROM Usuarios WHERE Nombre=? AND Passcode=?";
            
            st = this.getConexion().prepareStatement(consulta);
            
            st.setString(1, nombre);
            st.setString(2, pass);
            
            rs = st.executeQuery();
            
            return rs.next();
            
        } catch (Exception e) {
            
            System.out.println(e.getMessage());
            
        } finally {
            
            try {
                
                if (rs != null) {
                    rs.close();
                }
                
                if (st != null) {
                    st.close();
                }
                
                if (this.getConexion() != null) {
                    this.getConexion().close();
                }
                
            } catch (Exception e) {
                
                System.out.println(e.getMessage());
                
            }
            
        }
        
        
        return false;
    }
    
    public boolean agregarProducto(String nombre, String descripcion, String imagen, double precio) {
        PreparedStatement st = null;
        
        try {
            String consulta = "INSERT INTO Producto(Nombre, Descripcion, Img, Precio) VALUES(?, ?, ?, ?)";
            
            st = this.getConexion().prepareStatement(consulta);
            
            st.setString(1, nombre);
            st.setString(2, descripcion);
            st.setString(3, imagen);
            st.setDouble(4, precio);
            
            return st.executeUpdate() == 1;
            
        } catch (Exception e) {
            
            System.out.println(e.getMessage());
            
        } finally {
            
            try {
                
                if (st != null) {
                    st.close();
                }
                
                if (this.getConexion() != null) {
                    this.getConexion().close();
                }
                
            } catch (Exception e) {
                
                System.out.println(e.getMessage());
                
            }
            
        }
        
        
        return false;
    }
    
    public boolean editarProducto(){ 
        
    }
    
    public boolean eliminarProducto(){
        
    }
    
    public Producto obtenerProducto(){
        
    }
    
}