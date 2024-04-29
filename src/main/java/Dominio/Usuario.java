/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dominio;

/**
 *
 * @author natsu
 */
public class Usuario {
    
    public Usuario() {
    }

    public Usuario(int Usuario_id, String Nombre, String Passcode, boolean isAdmin) {
        this.Usuario_id = Usuario_id;
        this.Nombre = Nombre;
        this.Passcode = Passcode;
        this.isAdmin = isAdmin;
    }
    
    public int getUsuario_id() {
        return Usuario_id;
    }

    public void setUsuario_id(int Usuario_id) {
        this.Usuario_id = Usuario_id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getPasscode() {
        return Passcode;
    }

    public void setPasscode(String Passcode) {
        this.Passcode = Passcode;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    private int Usuario_id;
    private String Nombre, Passcode;
    private boolean isAdmin;
    
}
