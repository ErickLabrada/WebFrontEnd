<!DOCTYPE html>
<html lang="en">

    <%! String tituloPagina = "Editar administrador"; %>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </head>

    <body>

        <div class="container-fluid">
            <div class="row">

                <!-- Men� lateral -->
                <jsp:include page="/WEB-INF/jspf/administrador_sidebar.jsp" />
                <!-- Fin men� lateral -->


                <!-- Contenido de la p�gina -->
                <div class="col-10 text-bg-light vh-100 text-center">

                    <div class="row text-bg-light h-100 overflow-y-auto">

                        <div class="row">

                            <div class="col text-bg-secondary"><%= tituloPagina %></div>

                        </div>

                        <!-- Contenido -->

                        <div class="row h-100">

                            <div class="col">
                                <!-- Formulario -->
                                <div class="row">
                                    <div class="col">
                                        Editar administrador
                                    </div>
                                </div>

                                <div class="row">
                                    <form action="#" method="post" class="col-8">
                                        <div class="form-floating mb-3">
                                            <input required type="text" name="usuarioActual" class="form-control"
                                                   placeholder="Usuario actual">
                                            <label for="usuario">Nombre de usuario...</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input required type="password" name="contrase�aNueva" class="form-control"
                                                   placeholder="Contrase�a Nueva">
                                            <label for="contrase�a">Nueva contrase�a...</label>
                                        </div>
                                        
                                        <div class="col-2 align-self-center">
                                            <button class="btn" style="background-color: #C07F00; color: white;">Editar</button>
                                        </div>
                                    </form>

                                    


                                </div>
                                <!-- Fin del formulario -->
                            </div>

                        </div>

                        <!-- Fin del contenido -->

                    </div>

                </div>
            </div>
        </div>
    </body>

</html>
