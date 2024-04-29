/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

import Dominio.Producto;

/**
 *
 * @author natsu
 */
public class ComponenteProducto {
    
    private Producto p;

    public ComponenteProducto(Producto p) {
        this.p = p;
    }
    public String obtenerCodigo() {
        
        return "<div class=\"col-md-4\">\n" +
"    <div class=\"card mb-4 product-wap rounded-0\">\n" +
"        <div class=\"card rounded-0\">\n" +
"            <img class=\"card-img rounded-0 img-fluid\" src=\"\">                                <div\n" +
"                class=\"card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center\">\n" +
"                <ul class=\"list-unstyled\">\n" +
"                    <li><a class=\"btn btn-success text-white\" href=\"shop-single.html\"><i\n" +
"                                class=\"far fa-heart\"></i></a></li>\n" +
"                    <li><a class=\"btn btn-success text-white mt-2\" href=\"shop-single.html\"><i\n" +
"                                class=\"far fa-eye\"></i></a></li>\n" +
"                    <li><a class=\"btn btn-success text-white mt-2\" href=\"shop-single.html\"><i\n" +
"                                class=\"fas fa-cart-plus\"></i></a></li>\n" +
"                </ul>\n" +
"            </div>\n" +
"        </div>\n" +
"        <div class=\"card-body\">\n" +
"            <a href=\"shop-single.html\" class=\"h3 text-decoration-none\">"+p.getNombre()+"</a>                                <ul class=\"w-100 list-unstyled d-flex justify-content-between mb-0\">\n" +
"                <li class=\"pt-2\">\n" +
"                    <span\n" +
"                        class=\"product-color-dot color-dot-red float-left rounded-circle ml-1\"></span>\n" +
"                    <span\n" +
"                        class=\"product-color-dot color-dot-blue float-left rounded-circle ml-1\"></span>\n" +
"                    <span\n" +
"                        class=\"product-color-dot color-dot-black float-left rounded-circle ml-1\"></span>\n" +
"                    <span\n" +
"                        class=\"product-color-dot color-dot-light float-left rounded-circle ml-1\"></span>\n" +
"                    <span\n" +
"                        class=\"product-color-dot color-dot-green float-left rounded-circle ml-1\"></span>\n" +
"                </li>\n" +
"            </ul>\n" +
"            <ul class=\"list-unstyled d-flex justify-content-center mb-1\">\n" +
"                <li>\n" +
"                    <i class=\"text-warning fa fa-star\"></i>\n" +
"                    <i class=\"text-warning fa fa-star\"></i>\n" +
"                    <i class=\"text-warning fa fa-star\"></i>\n" +
"                    <i class=\"text-muted fa fa-star\"></i>\n" +
"                    <i class=\"text-muted fa fa-star\"></i>\n" +
"                </li>\n" +
"            </ul>\n" +
"            <p class=\"text-center mb-0\">$"+p.getPrecio()+"</p>                            </div>\n" +
"    </div>\n" +
"</div>";
        
    }
    
}
