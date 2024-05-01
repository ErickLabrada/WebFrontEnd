<%@ page import="Dominio.Usuario" %>

<%
    HttpSession objSesion = request.getSession(false);
    Usuario usuario = (Usuario) objSesion.getAttribute("usuario");

    //Por si el usuario no es administrador
    
    if (usuario == null) {
        response.sendRedirect("index.jsp");
    }
    
    if (! usuario.isIsAdmin()) {
        response.sendRedirect("index.jsp");
    }
    
%>


<!DOCTYPE html>
<html lang="en">

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

            <!-- sidebar menu -->
            <div class="col-2 text-bg-primary vh-100 overflow-y-auto">

                <div class="row">
                    <div class="col text-bg-secondary accordion">


                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Administrar productos
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    
                                    <div class="list-group">
                                        <a href="#" class="list-group-item list-group-action">Agregar producto</a>
                                        <a href="#" class="list-group-item list-group-action">Editar producto</a>
                                        <a href="#" class="list-group-item list-group-action">Eliminar producto</a>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                    Administrar usuarios
                                </button>
                            </h2>

                            <div id="collapseTwo" class="accordion-collapse collapse"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    
                                    <div class="list-group">
                                        <a href="#" class="list-group-item list-group-action">Agregar usuario</a>
                                        <a href="#" class="list-group-item list-group-action">Editar usuarios</a>
                                        <a href="#" class="list-group-item list-group-action">Eliminar usuarios</a>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                    Configurar administrador
                                </button>
                            </h2>

                            <div id="collapseThree" class="accordion-collapse collapse"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    
                                    <div class="list-group">
                                        <a href="#" class="list-group-item list-group-action">Editar usuario</a>
                                    </div>

                                </div>
                            </div>

                        </div>

                    </div>
                </div>
                

            </div>

            <!-- Contenido de la pagina -->
            <div class="col-10 text-bg-light vh-100 text-center">

                <div class="row text-bg-light h-75">

                    <div class="row">

                        <div class="col text-bg-secondary">{Titulo de la pagina}</div>

                    </div>

                    <div class="row align-items-center h-100">

                        <div class="col">
                            Pagina para la administracion del sistema
                            de ventas Boutique Dimas.
                            Para más información consulte a la persona encargada del sistema
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>

</body>

</html>