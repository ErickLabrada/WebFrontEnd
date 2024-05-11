/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dominio;

/**
 *
 * @author natsu
 */
public class Producto {

    public Producto() {
    }

    public Producto(int id, String Nombre, String Descripcion, String Img, Double precio) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Img = Img;
        this.precio = precio;
        this.id = id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getImg() {
        return Img;
    }

    public void setImg(String Img) {
        this.Img = Img;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Producto{" + "Nombre=" + Nombre + ", Descripcion=" + Descripcion + ", Img=" + Img + ", precio=" + precio + ", id=" + id + '}';
    }

    private String Nombre, Descripcion, Img;
    private Double precio;
    private int id;

}
