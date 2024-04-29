/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author natsu
 */
public class Conexion {
    
    private final String host = "localhost";
    private final String user = "root";
    private final String pass = "123";
    private final String port = "3306";
    private final String dbName = "Papeleria";
    
    private final String url = "jdbc:mysql://"+host+":"+port+"/"+dbName+"?useSSL=false";
    
    private Connection conexion;
    
    protected Conexion() {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            this.conexion = DriverManager.getConnection(url, user, pass);
            
        } catch (SQLException | ClassNotFoundException e) {
        
            System.err.println(e.getMessage());
            
        }
        
    }
    
    public Connection getConexion() {
        return this.conexion;
    }
    
    
}
