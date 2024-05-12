/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dominio;

import java.util.List;

/**
 *
 * @author natsu
 */
public class Carrito {

    private List<Integer> productosGuardados;

    public List<Integer> getProductosGuardados() {
        return productosGuardados;
    }

    public boolean estaEnElCarrito(int id) {
        return this.productosGuardados.indexOf(id) != -1;
    }

    public void agregarProducto(int id) {
        this.productosGuardados.add(id);
    }

    public void removerProducto(int id) {
        this.productosGuardados.remove(Integer.valueOf(id));
    }

    public void setProductosGuardados(List<Integer> productosGuardados) {
        this.productosGuardados = productosGuardados;
    }

    public Carrito() {
    }

    public Carrito(List<Integer> productosGuardados) {
        this.productosGuardados = productosGuardados;
    }

}
