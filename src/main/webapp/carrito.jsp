<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito</title>

    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    <script src="assets/js/equipo/Datos.js"></script>
    <script src="assets/js/equipo/peticiones.js"></script>
    <script src="assets/js/equipo/CarritoDeCompras.js"></script>    
    <script src="assets/js/equipo/mostrarProductosCarrito.js"></script>

</head>
<body>

    <jsp:include page="WEB-INF/jspf/topnav.jsp" />
    <jsp:include page="WEB-INF/jspf/navbar.jsp" />


    <div class="container-fluid">
        <div class="row">


            <div class="col-4" id="informacionProducto" style="background-color: #4C3D3D; color: white">
                <!-- Apartado de información del producto -->

                <img src="assets/img/banner_img_02.jpg" class="img-thumbnail rounded img-fluid" alt="">

                <p>Producto: </p>
                <p>Precio: </p>
                <p>Descripción: </p>
            </div>


            <div class="col-8">

                <table class="bg-secondary table" id="listaProductos">
                    <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Agregar</th>
                            <th scope="col">Total</th>
                            <th scope="col">Restar</th>
                            <th scope="col">Borrar</th>
                        </tr>
                    </thead>
                    <tbody id="cuerpoTabla">
    
                        <!-- se agrega dinamicamente -->

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <jsp:include page="WEB-INF/jspf/footer.jsp" />
</body>
</html>