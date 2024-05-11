<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultar productos</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <script src="assets/js/equipo/Datos.js"></script>
    <script src="assets/js/equipo/peticiones.js"></script>
    <script src="assets/js/equipo/mostrarDatosTabla.js"></script>

</head>
<body>
    
    <div class="container-fluid">
        <div class="row">

             <!--  sidebar menu -->
            <jsp:include page="/WEB-INF/jspf/administrador_sidebar.jsp" />
            <!-- fin sidebar-->
            
            
            <!-- Contenido de la pagina -->
            <div class="col-10 text-bg-light vh-100 text-center">

                <div class="row text-bg-light h-100 overflow-y-auto">

                    <div class="row">

                        <div class="col text-bg-secondary">Claro q si</div>

                    </div>

                    <!-- contenido  -->

                    <div class="row h-100">

                        <div class="col">

                            <!-- Aqui se van a a mostrar todos los productos dinamicamente -->
                        <table class="table">

                            <!-- las columnas -->
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Stock</th>
                                    <th scope="col">Descripcion</th>
                                </tr>
                            </thead>

                            <tbody id="cuerpoTabla">

                                <!-- aqui se van a mostrar los datos dinamicamente -->

                            </tbody>
                            
                        </table>

                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>


</body>
</html>