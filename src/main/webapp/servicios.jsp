<!DOCTYPE html>
<html lang="en">

<head>
    <title>Sobre nosotros</title>
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

    <!-- Header -->
    <jsp:include page="/WEB-INF/jspf/navbar.jsp" />
    <!-- Close Header -->
    
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
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <section class="py-5" style="background-color: #FFF7D4;">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-black">
                    <h1>Papeler��a</h1>
                    <p>
                        <br>
                         Encuentra todo lo que necesitas para el trabajo y el estudio en nuestra secci�n de papeler�a. 
                         Desde l�pices y bol�grafos hasta material de oficina personalizado. En nuestra secci�n de papeler�a,
                         te ofrecemos mucho m�s que simples suministros de oficina. Es el lugar donde la creatividad se encuentra
                         con la funcionalidad, proporcion�ndote todo lo necesario para expresarte y tener �xito en tus proyectos.

                    </p>
                </div>
                <div class="col-md-4">
                    <img src="assets/img/Papeleria.png" alt="About Hero">
                </div>
            </div>
        </div>
    </section>

    <section class="py-5" style="background-color: #FFF7D4;">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-4">
                    <img src="assets/img/Boutique.png" alt="About Hero">
                </div>
                <div class="col-md-8 text-black">
                    <h1>Boutique</h1>
                    <p>
                        <br>
                        Descubre las �ltimas tendencias de moda y estilo en nuestra boutique. 
                        Desde ropa elegante y accesorios hasta calzado de moda, te ayudaremos a encontrar 
                        el look perfecto para cualquier ocasi�n. Adem�s, nuestro equipo de expertos
                        en moda est� aqu� para brindarte asesoramiento personalizado y garantizar que te veas y te sientas incre�ble.

                    </p>
                </div>
                
            </div>
        </div>
    </section>

    <section class="py-5" style="background-color: #FFF7D4;">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-black">
                    <h1>Sorteos</h1>
                    <p>
                        <br>
                        No te pierdas la oportunidad de ganar emocionantes premios en nuestros sorteos y rifas. 
                        Participa para tener la oportunidad de llevarte a casa incre�bles regalos, descuentos especiales y mucho m�s. 
                        Es nuestra manera de agradecer tu apoyo y fomentar la diversi�n y la emoci�n entre nuestra comunidad de clientes

                    </p>
                </div>
                <div class="col-md-4">
                    <img src="assets/img/Giveaway.png" alt="About Hero">
                </div>
            </div>
        </div>
    </section>


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