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
        <script src="assets/js/equipo/Datos.js"></script>
        <script src="assets/js/equipo/agregarProductoCoockie.js"></script>
        <script src="assets/js/equipo/obtenerProductos.js" defer></script>

    </head>

    <body>
        <jsp:include page="/WEB-INF/jspf/topnav.jsp" />

        <!-- Header -->
        <jsp:include page="/WEB-INF/jspf/navbar.jsp" />
        <!-- Close Header -->
        
        <!-- Start Content -->
        <div class="container py-5">
            <div class="row">

                

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

                        <div class="row">
                            <ul class="pagination pagination-lg justify-content-end">
                                <li class="page-item disabled">
                                    <a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="#" tabindex="-1" style="background-color: #FFF7D4; color:black";>1</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="#" style="background-color: #FFF7D4; color:black";>2</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#" style="background-color: #FFF7D4;">3</a>
                                </li>
                            </ul>
                        </div>
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