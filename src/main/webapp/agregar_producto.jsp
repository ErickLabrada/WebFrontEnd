<!DOCTYPE html>
<html lang="en">

    <%! String nombrePagina = "Agregar producto"; %>
    
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
                                    <%= nombrePagina %>
                                </div>
                            </div>

                            <div class="row">
                                <form action="CrearProducto" method="POST" class="col-8" enctype="multipart/form-data" id="form">
                                    <div class="form-floating mb-3">
                                        <input type="text" name="nombre" class="form-control" placeholder="Producto">
                                        <label for="nombreProducto">Nombre del producto...</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input type="text" name="descripcion" class="form-control"
                                            placeholder="Descripci�n">
                                        <label for="nombreProducto">Descripci�n...</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input type="number" name="precio" class="form-control" placeholder="Precio">
                                        <label for="nombreProducto">Precio...</label>
                                    </div>
                                    <div class="input-group mb-3">
                                        <label class="input-group-text" name="inputGroupFile01">Subir foto</label>
                                        <input type="file" class="form-control" name="inputGroupFile01">
                                    </div>

                                    <div class="col-2 align-self-center" onclick="enviarPeticion()">
                                        <button class="btn btn-primary btn-lg">Registrar</button>
                                    </div>

                                </form>

                                <script>

                                    let form = document.getElementById('form');

                                    form.addEventListener('submit', async function (event) {
                                        event.preventDefault();
                                        let formData = new FormData(form);
                                        
                                        let response = await fetch(DATOS.URL.agregarProducto, {
                                            method: 'POST',
                                            body: formData
                                        });
                                        
                                        let json = await response.json();

                                        alert(json.data);

                                    });

                                </script>


                            </div>
                            <!-- fin del formulario  -->
                        </div>

                    </div>

                    <!-- fin del contenido -->

                    <script src="assets/js/equipo/peticiones.js"></script>
                    
                </div>

            </div>
        </div>
    </div>

</body>

</html>