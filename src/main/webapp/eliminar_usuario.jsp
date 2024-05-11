<!DOCTYPE html>
<html lang="en">
    <!--Las variables estan raras-->
    <%! String nombrePagina = "Eliminar usuario"; %>
    
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

             <!-- sidebar menu 
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
                                    Eliminar de usuario
                                </div>
                            </div>

                            <div class="row">
                                <form action="EliminarUsuario" method="post" class="col-8" id="form">
                                    <div class="form-floating mb-3">
                                        <input type="text" name="usuario" class="form-control" placeholder="Usuario">
                                        <label for="usuario">Nombre de usuario...</label>
                                    </div>

                                    <div class="col-2 align-self-center">
                                        <input type="submit" class="btn btn-primary btn-lg" value="Eliminar">
                                    </div>

                                </form>
    
                                <script>

                                    const form = document.getElementById('form');

                                    form.addEventListener('submit', async (e) => {
                                        e.preventDefault();
                                        const formData = new FormData(form);
                                        
                                        let res = await fetch(DATOS.URL.eliminarUsuario, {
                                            method: 'POST',
                                            headers: {
                                                'Content-Type': 'application/x-www-form-urlencoded'
                                            },
                                            body: new URLSearchParams(formData).toString(),
                                        })
                                        
                                        let json = await res.json();

                                        alert(json.data);

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