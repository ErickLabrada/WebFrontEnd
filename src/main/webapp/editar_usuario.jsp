<!DOCTYPE html>
<html lang="en">

    <%! String nombrePagina = "Editar usuario"; %>
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><%= nombrePagina %></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
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
                                        Editar usuario
                                    </div>
                                </div>

                                <div class="row">
                                    <form action="#" method="post" class="col-8">
                                        <div class="form-floating mb-3">
                                            <input type="text" name="usuarioActual" class="form-control"
                                                   placeholder="UsuarioActual">
                                            <label for="usuario">Nombre de usuario actual...</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input type="text" name="usuarioNuevo" class="form-control"
                                                   placeholder="UsuarioNuevo">
                                            <label for="usuario">Nuevo nombre de usuario...</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input type="password" name="contraseñaNueva" class="form-control"
                                                   placeholder="ContraseñaNueva">
                                            <label for="contraseña">Nueva contraseña...</label>
                                        </div>
                                        <div class="form-check form-switch d-flex justify-content-between">
                                            <label class="form-check-label text-start" for="adminRole">Dar permisos de
                                                administración</label>
                                            <input class="form-check-input" type="checkbox" id="adminRole" name="isAdmin"
                                                   value="true" checked>
                                        </div>


                                    </form>

                                    <div class="col-2 align-self-center">
                                        <button class="btn btn-primary btn-lg">Editar</button>
                                    </div>


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