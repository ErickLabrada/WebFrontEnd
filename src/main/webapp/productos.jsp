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
        <script src="assets/js/equipo/obtenerProductos.js" defer></script>

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
                                Papelerí­a
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



                        <div class="row row-cols-3" id="contenedorProductos">
                            
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

            <jsp:include page="/WEB-INF/jspf/footer.jsp" />


            <!-- Start Script -->
            <script src="assets/js/jquery-1.11.0.min.js"></script>
            <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
            <script src="assets/js/bootstrap.bundle.min.js"></script>
            <script src="assets/js/templatemo.js"></script>
            <script src="assets/js/custom.js"></script>
            <!-- End Script -->
    </body>

</html>