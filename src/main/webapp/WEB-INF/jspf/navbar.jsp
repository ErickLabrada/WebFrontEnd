<!-- Header -->

<%@ page import = "Dominio.Usuario" %>

<%
    HttpSession objSesion = request.getSession(false);
    Usuario usuario = (Usuario) objSesion.getAttribute("usuario");

    
%>

    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand logo h1 align-self-center" style="color: #4C3D3D;" href="/WebFrontEnd">
                Boutique Dimas
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
                id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/tiendita">Inicio</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="empresa.jsp">Empresa</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="productos.jsp">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="servicios.jsp">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contacto.jsp">Contacto</a>
                        </li>
                        <%if (usuario != null && usuario.isIsAdmin()) {%>
                                
                        <li class="nav-item">
                            <a class="nav-link" href="info.jsp">Administraci&oacute;n</a>
                        </li>
                        
                        <% }%>
                        
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal"
                        data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="carrito.jsp">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span
                            class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                    <button class="btn nav-icon position-relative text-decoration-none" data-bs-target="#modalLogin"
                        data-bs-toggle="modal">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <%
                            if (usuario != null) {
                                out.println(usuario.getNombre());
                            }
                        %>
                    </button>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

    <!-- modal login -->

    <div class="modal fade" id="modalLogin" tabindex="1" aria-labelledby="modalLoginLabel" aria-hidden="true">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="modalLoginLabel">Inicio de sesi&oacute;n</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <form class="container modal-body text-center" method="POST" action="iniciar">

                    <div class="row">
                        <div class="col p-3">

                            <div class="form-floating">
                                <input required type="text" class="form-control" name="usuario" placeholder="Usuario">
                                <label for="usuario">Usuario</label>
                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col p-3">
                            <div class="form-floating">
                                <input required type="password" name="pass" class="form-control" placeholder="Contrase�a">
                                <label for="pass">Contrase&ntilde;a</label>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content">
                        <div class="order-last pr-3">
                            <button class="btn " style="background-color: #C07F00; color:white">Iniciar Sesi&oacute;n</button>
                        </div>
                    </div>
                    
                </form>
                <div class="container modal-body text-center">
                    <div class="row justify-content">
                        <div class="order-last">
                            <a class="btn btn-secondary" href="registro.jsp">Registrarse</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- fin modal login -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text  text-light"style="background-color: #C07F00;"  >
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
