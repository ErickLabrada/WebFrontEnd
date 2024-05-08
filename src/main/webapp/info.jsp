<%@ page import="Dominio.Usuario" %>
<!--ESTO LLEVA ACENTO-->
<%! String nombrePagina = "Pagina de informacion"; %>

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

                <div class="row text-bg-light h-75">

                    <div class="row">

                        <div class="col text-bg-secondary"><%= nombrePagina %></div>

                    </div>

                    <div class="row align-items-center h-100">

                        <div class="col">
                            Pgina para la administración del sistema
                            de ventas Boutique Dimas.
                            Para más información, consulte a la persona encargada del sistema.
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>

</body>

</html>