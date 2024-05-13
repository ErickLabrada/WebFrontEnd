<!DOCTYPE html>
<html lang="en">

    <%! String nombrePagina = "Editar producto"; %>
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><%= nombrePagina %></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

        <script src="assets/js/equipo/Datos.js"></script>
        <script src="assets/js/equipo/peticiones.js"></script>
        <script src="assets/js/equipo/editarProducto.js" defer></script>

    </head>

    <body>

        <div class="container-fluid">
            <div class="row">

                <!-- sidebar menu -->
                <jsp:include page="/WEB-INF/jspf/administrador_sidebar.jsp" />
                <!--fin sidebar-->

                <!-- Contenido de la pagina -->
                <div class="col-10 text-bg-light vh-100 text-center">

                    <div class="row text-bg-light h-100 overflow-y-auto">

                        <div class="row">

                            <div class="col text-bg-secondary"><%= nombrePagina %></div>

                        </div>

                        <!-- contenido  -->

                        <div class="row h-100">

                            <div class="col">
                                <!-- formuario -->
                                <div class="row">
                                    <div class="col">
                                        Editar producto
                                    </div>
                                </div>

                                <div class="row">
                                    <form action="#" method="post" class="col-8" id="form" enctype="multipart/form-data">
                                        <div class="form-floating mb-3">
                                            <input required id="idProducto" type="text" name="idProducto" class="form-control" placeholder="idProducto">
                                            <label for="nombreProducto">ID del producto...</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input required id="nombre" type="text" name="nombre" class="form-control" placeholder="Producto">
                                            <label for="nombreProducto">Nuevo nombre del producto...</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input required min="1" id="descripcion" type="number" name="descripcion" class="form-control" placeholder="Descripci�n">
                                            <label for="nombreProducto">Nueva descripci&oacute;n...</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input required min="0" id="precio" type="number" name="precio" class="form-control" placeholder="Precio">
                                            <label for="nombreProducto">Nuevo precio...</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input required id="img" type="file" name="img" class="form-control" placeholder="Img">
                                            <label for="nombreProducto">Nueva foto...</label>
                                        </div>

                                        <div class="col-2 align-self-center">
                                            <input type="submit" value="Editar" class="btn"style="background-color: #C07F00; color: white;">
                                        </div>

                                    </form>

                                    

                                </div>
                                <!-- fin del formulario  -->
                            </div>

                        </div>

                        <!-- fin del contenido -->

                    </div>

                </div>
            </div>
        </div>

    </body>

</html>