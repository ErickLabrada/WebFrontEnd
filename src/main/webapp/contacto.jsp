<!DOCTYPE html>
<html lang="en">

<head>
    <title>Contacto</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    <!-- Load map styles -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
        integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
        crossorigin="" />
    <!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none"
                        href="mailto:dymas-@hotmail.com">dymas-@hotmail.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:+64 4-202 5553">+64 4-202
                        5553</a>
                </div>
                <div>
                    <a class="text-light" href="https://www.facebook.com/PapeleriayBoutiqueDimas" target="_blank"
                        rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/papeleriayboutiquedimas/" target="_blank"><i
                            class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->

    <jsp:include page="/WEB-INF/jspf/navbar.jsp" />

    <!-- Modal busqueda -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>

    

    <!-- Start Content Page -->
    <div class="container-fluid py-5" style="background-color: #FFD95A;">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">Contactanos</h1>
            <p>
                Puedes asistir a nuestra tienda de abarrotes situada en Blvd Camino Real #250, o puedes mandarnos un
                correo electronico llenando el siguiente formulario
            </p>
        </div>
    </div>

    <!-- Start Map -->
    <div id="mapid" style="width: 100%; height: 300px;">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3540.3926488404254!2d-109.93925102422745!3d27.457032776327004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86c817a618225527%3A0x2a3111bf255bab3c!2sPapeler%C3%ADa%20%26%20Boutique%20Dimas!5e0!3m2!1sen!2smx!4v1710924391339!5m2!1sen!2smx"
            width="100%" height="300px" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>


    <!-- Start Contact -->
    <div class="container py-5">
        <div class="row py-5">
            <form class="col-md-9 m-auto" method="mailto:dymas-@hotmail.com" role="form">
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputname">Nombre</label>
                        <input type="text" class="form-control mt-1" id="name" name="name" placeholder="Nombre">
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputemail">Correo electronico</label>
                        <input type="email" class="form-control mt-1" id="email" name="email"
                            placeholder="Correo electronico">
                    </div>
                </div>
                <div class="mb-3">
                    <label for="inputsubject">Titulo</label>
                    <input type="text" class="form-control mt-1" id="subject" name="subject" placeholder="Titulo">
                </div>
                <div class="mb-3">
                    <label for="inputmessage">Mensaje</label>
                    <textarea class="form-control mt-1" id="message" name="message" placeholder="Mensaje"
                        rows="8"></textarea>
                </div>
                <div class="row">
                    <div class="col text-end mt-2">
                        <button type="submit" class="btn btn-lg px-3"
                            style="background-color: #C07F00; color:white;">Mandar mensaje</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- End Contact -->


    <jsp:include page="/WEB-INF/jspf/footer.jsp" />

    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->
</body>

</html>