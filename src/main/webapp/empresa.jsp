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
</head>

<body>

    <jsp:include page="/WEB-INF/jspf/topnav.jsp" />

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
                    <h1>Sobre nosotros</h1>
                    <p>
                        Boutique Dimas no es solo una tienda, es el centro de la organizaci�n y la comida.
                        Imagina un lugar donde puedes encontrar desde el l�piz m�s puntiagudo
                        hasta la lata de frijoles m�s deliciosa. Las creadoras y organizadoras mantienen un local
                        donde cada art�culo cumple con tus expectativas. �Ven a Boutique Dimas, donde comprar es una aventura!
                    </p>
                </div>
                <div class="col-md-4">
                    <img src="assets/img/about-hero.svg" alt="About Hero">
                </div>
            </div>
        </div>
    </section>

    <section class="container py-5">
        <div class="row text-center pt-5 pb-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Nuestros servicios</h1>
                <p>
                    Ofrecidos con la mejor calidad que nuestra empresa puede ofrecer, para brindarte
                    una experiencia inigualable.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-center" style="color: #C07F00;"><i class="fa fa-archive fa-lg"></i></div>
                    <h2 class="h5 mt-4 text-center">Sistema de apartado</h2>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-center" style="color: #C07F00;"><i class="fas fa-credit-card"></i></div>
                    <h2 class="h5 mt-4 text-center">Pagos con tarjeta</h2>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-center" style="color: #C07F00;"><i class="fa fa-percent"></i></div>
                    <h2 class="h5 mt-4 text-center">Descuentos por mayoreo</h2>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-center" style="color: #C07F00;"><i class="fa fa-user"></i></div>
                    <h2 class="h5 mt-4 text-center">Servicio de 12 horas (8 am a 8 pm)</h2>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="/WEB-INF/jspf/footer.jsp" />

    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
</body>

</html>
