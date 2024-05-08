<!DOCTYPE html>

<%@ page import="Util.Consultas"  %>
<%@ page import="Dominio.Producto" %>
<%@ page import="java.util.List" %>
<%@ page import="Util.ComponenteProducto" %>

<html lang="en">

    <head>
        <title>Productos</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">
        <!--
        
    TemplateMo 559 Zay Shop
    
    https://templatemo.com/tm-559-zay-shop
    
        -->
    </head>

    <body>
        <!-- Start Top Nav -->
        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
            <div class="container text-light">
                <div class="w-100 d-flex justify-content-between">
                    <div>
                        <i class="fa fa-envelope mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none"
                           href="mailto:dymas-@hotmail.com">dymas-@hotmail.com</a>
                        <i class="fa fa-phone mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="tel:+64 4-202 5553">+64 4-202
                            5553</a>
                    </div>
                    <div>
                        <a class="text-light" href="https://www.facebook.com/PapeleriayBoutiqueDimas" target="_blank"
                           rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://www.instagram.com/papeleriayboutiquedimas/" target="_blank"><i
                                class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Close Top Nav -->

        <!-- Header -->
        <jsp:include page="/WEB-INF/jspf/navbar.jsp" />
        <!-- Close Header -->
        
        <!-- Start Content -->
        <div class="container py-5">
            <div class="row">

                <div class="col-lg-3">
                    <h1 class="h2 pb-4">Categorías</h1>
                    <ul class="list-unstyled templatemo-accordion">
                        <li class="pb-3">
                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                Papelería
                                <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                            </a>
                            <ul class="collapse show list-unstyled pl-3">
                                <li><a class="text-decoration-none" href="#">Utensilios</a></li>
                                <li><a class="text-decoration-none" href="#">Hojas</a></li>
                            </ul>
                        </li>
                        <li class="pb-3">
                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                Boutique
                                <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                            </a>
                            <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                                <li><a class="text-decoration-none" href="#">Maquillaje</a></li>
                                <li><a class="text-decoration-none" href="#">Ropa</a></li>
                            </ul>
                        </li>
                        <li class="pb-3">
                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                Abarrotes
                                <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                            </a>
                            <ul id="collapseThree" class="collapse list-unstyled pl-3">
                                <li><a class="text-decoration-none" href="#">Sabritas</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-md-6">
                            <!--<ul class="list-inline shop-top-menu pb-3 pt-1">
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none mr-3" href="#">Todos</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none mr-3" href="#"></a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none" href="#">Women's</a>
                                </li>
                            </ul>-->
                        </div>
                        <div class="col-md-6 pb-4">
                            <div class="d-flex">
                                <select class="form-control">
                                    <option>Destacado</option>
                                    <option>A a la Z</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">



                        <div class="row">
                            <%
        Consultas c = new Consultas();
        List<Producto> listaProductos = c.obtenerProductos();
        
        for (Producto producto : listaProductos) {
        
            // Append index to the attribute name to make it unique
            
            ComponenteProducto cp = new ComponenteProducto(producto);
                            %>
                            
                            <%= cp.obtenerCodigo() %>
                            
                            <% } %>
                        </div>

                        <div div="row">
                            <ul class="pagination pagination-lg justify-content-end">
                                <li class="page-item disabled">
                                    <a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="#"
                                       tabindex="-1">1</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark"
                                       href="#">2</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">3</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Content -->

            <!-- Start Footer -->
            <footer class="bg-dark" id="tempaltemo_footer">
                <div class="container">
                    <div class="row">

                        <div class="col-md-4 pt-5">
                            <h2 class="h2 border-bottom pb-3 border-light logo" style="color: #fff;">Papelería & Boutique Dimas
                            </h2>
                            <ul class="list-unstyled text-light footer-link-list">
                                <li>
                                    <i class="fas fa-map-marker-alt fa-fw"></i>
                                    Bvld Camino Real #250
                                </li>
                                <li>
                                    <i class="fa fa-phone fa-fw"></i>
                                    <a class="text-decoration-none" href="tel:+52(644)-202-5553">+52(644)-202-5553</a>
                                </li>
                                <li>
                                    <i class="fa fa-envelope fa-fw"></i>
                                    <a class="text-decoration-none" href="mailto:dymas-@hotmail.com">dymas-@hotmail.com</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-md-4 pt-5">
                            <h2 class="h2 text-light border-bottom pb-3 border-light">Productos</h2>
                            <ul class="list-unstyled text-light footer-link-list">
                                <li><a class="text-decoration-none" href="#">Utiles escolares</a></li>
                                <li><a class="text-decoration-none" href="#">Material de arte</a></li>
                                <li><a class="text-decoration-none" href="#">Papelería</a></li>
                                <li><a class="text-decoration-none" href="#">Bolsos</a></li>
                                <li><a class="text-decoration-none" href="#">Accesorios</a></li>
                                <li><a class="text-decoration-none" href="#">Calzado</a></li>
                            </ul>
                        </div>

                        <div class="col-md-4 pt-5">
                            <h2 class="h2 text-light border-bottom pb-3 border-light">Más información</h2>
                            <ul class="list-unstyled text-light footer-link-list">
                                <li><a class="text-decoration-none" href="index.html">Inicio</a></li>
                                <li><a class="text-decoration-none" href="empresa.html">Sobre nosotros</a></li>
                                <li><a class="text-decoration-none" href="productos.html">Productos</a></li>
                                <li><a class="text-decoration-none" href="contacto.html">Contacto</a></li>
                            </ul>
                        </div>

                    </div>

                    <div class="row text-light mb-4">
                        <div class="col-12 mb-3">
                            <div class="w-100 my-3 border-top border-light"></div>
                        </div>
                        <div class="col-auto me-auto">
                            <ul class="list-inline text-left footer-icons">
                                <li class="list-inline-item border border-light rounded-circle text-center">
                                    <a class="text-light text-decoration-none" target="_blank"
                                       href="https://www.facebook.com/PapeleriayBoutiqueDimas"><i
                                            class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="w-100 bg-black py-3">
                    <div class="container">
                        <div class="row pt-2">
                            <div class="col-12">
                                <p class="text-left text-light">
                                    Copyright &copy; 2023 Equipo Michines del desierto <br>
                                    Rodriguez Valenzuela Rosa(Alan),
                                    Erick Antonio Labrada Rodriguez,
                                    Fernando Tadeo Zayas Bernal,
                                    Roberto Contreras Martínez,
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </footer>
            <!-- End Footer -->


            <!-- Start Script -->
            <script src="assets/js/jquery-1.11.0.min.js"></script>
            <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
            <script src="assets/js/bootstrap.bundle.min.js"></script>
            <script src="assets/js/templatemo.js"></script>
            <script src="assets/js/custom.js"></script>
            <!-- End Script -->
    </body>

</html>