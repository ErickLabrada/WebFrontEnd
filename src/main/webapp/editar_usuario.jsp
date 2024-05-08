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
                                    <form action="EditarUsuario" method="POST" class="col-8" id="form">
                                        <div class="form-floating mb-3">
                                            <input type="text" name="usuarioActual" class="form-control"
                                                   placeholder="Usuario actual">
                                            <label for="usuario">Nombre de usuario actual...</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input type="text" name="usuarioNuevo" class="form-control"
                                                   placeholder="Usuario nuevo">
                                            <label for="usuario">Nuevo nombre de usuario...</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input type="password" name="newPass" class="form-control"
                                                   placeholder="Contraseña nueva">
                                            <label for="contraseÃ±a">Nueva contraseña...</label>
                                        </div>
                                        <div class="form-check form-switch d-flex justify-content-between">
                                            <label class="form-check-label text-start" for="adminRole">Dar permisos de
                                                administración</label>
                                            <input class="form-check-input" type="checkbox" id="adminRole" name="isAdmin"
                                                   value="true" checked>
                                        </div>
                                        <div class="col-2 align-self-center">
                                            <input value="Editar" class="btn btn-primary btn-lg" type="submit" >
                                        </div>
                                    </form>

                                    


                                    <script>

                                        const form = document.getElementById('form');

                                        form.addEventListener("submit", async (e) => {
                                            e.preventDefault();
                                            const formData = new FormData(form);
                                            const response = await fetch('EditarUsuario', {
                                                method: 'POST',
                                                headers: {
                                                    'Content-Type': 'application/x-www-form-urlencoded'
                                                },
                                                body: new URLSearchParams(formData).toString()
                                            });
                                            const data = await response.json();
                                            alert(data.data);
                                        });

                                    </script>

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