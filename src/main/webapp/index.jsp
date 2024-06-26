<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Papelerí­a & Boutique Dimas</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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
    <jsp:include page="/WEB-INF/jspf/topnav.jsp" />
    <jsp:include page="/WEB-INF/jspf/navbar.jsp" />

    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" style="background-color: #FFF7D4;">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_01.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1" style="color: #4C3D3D;"><b>Papelerí­a</b> & Boutique</h1>
                                <h3 class="h2">¡Bienvenidos!</h3>
                                <p>
                                    En nuestro espacio, fusionamos lo mejor de dos mundos: la elegancia y la utilidad.
                                    Somos mucho más que una simple papelerí­a; somos un destino donde la practicidad se
                                    encuentra con el estilo.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_02.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1" style="color: #4C3D3D;"><b>Papelerí­a</b></h1>
                                <h3 class="h2"></h3>
                                <p>
                                    En nuestra sección de papelerí­a, encontrarás una amplia gama de productos
                                    cuidadosamente seleccionados para
                                    satisfacer todas tus necesidades de escritura, organización y creatividad. Desde
                                    elegantes cuadernos hasta
                                    útiles accesorios de oficina, estamos aquí­ para hacer que tu dí­a a dí­a sea más
                                    inspirador y eficiente. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_03.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1" style="color: #4C3D3D"><b>Boutique</b></h1>
                                <h3 class="h2"> </h3>
                                <p>
                                    Pero eso no es todo. Nuestra boutique ofrece una exquisita selección de artí­culos de
                                    moda y
                                    accesorios que complementarán tu estilo personal. Desde joyerí­a elegante hasta
                                    bolsos
                                    exclusivos, estamos aquí­ para ayudarte a destacar con elegancia en cualquier
                                    ocasión. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel"
            role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel"
            role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Categorias populares</h1>
                <p>
                    Te presentamos una selección de nuestros productos más populares, cuidadosamente agrupados para facilitar tu búsqueda y ofrecerte lo mejor de nuestra colección.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="./assets/img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">Útiles escolares</h5>
                <p class="text-center"><a class="btn" style="background-color: #C07F00; color: white;">Ver tienda</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="./assets/img/category_img_02.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Bolsas</h2>
                <p class="text-center"><a class="btn" style="background-color: #C07F00; color: white;" >Ver tienda</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="./assets/img/category_img_03.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Accesorios</h2>
                <p class="text-center"><a class="btn" style="background-color: #C07F00; color: white;">Ver tienda</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Productos populares</h1>
                    <p>
                        Te presentamos una cuidada selección de nuestros artículos más solicitados y apreciados por nuestros clientes. Desde los clásicos favoritos hasta las últimas tendencias, aquí encontrarás lo mejor de nuestra colección.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="./assets/img/feature_prod_01.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$5.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Lápiz</a>
                            <p class="card-text">
                                Su diseño funcional incluye una punta suave que permite una escritura fluida y precisa, 
                                eliminando marcas y errores de forma limpia y sin dañar el papel. Además, su tamaño conveniente
                                lo hace perfecto para llevar a todas partes, ya sea en tu estuche, bolsillo o mochila. 
                                Ya sea que seas un estudiante, un artista o un profesional, es la opción ideal para aquellos
                                que buscan calidad, comodidad y precisión en cada trazo."                            </p>
                            <p class="text-muted">Reviews (24)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="./assets/img/feature_prod_02.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$480.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Bolso Gucci</a>
                            <p class="card-text">
                                Materiales de calidad: Confeccionado con materiales resistentes y duraderos para un uso prolongado. Diseño funcional: Con compartimentos espaciosos y bolsillos adicionales para una organización óptima. Estilo versátil: Combina fácilmente con diversos atuendos, desde casual hasta elegante. Comodidad: Correas ajustables y acolchadas para un transporte cómodo durante todo el día. Detalles cuidadosamente diseñados: Cierres de calidad y acabados finos que realzan su apariencia.
                            </p>
                            <p class="text-muted">Reviews (48)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="./assets/img/feature_prod_03.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$10.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Borrador</a>
                            <p class="card-text">
                                Textura suave: Elimina marcas y errores de forma limpia y sin dañar el papel.
                                Precisión: Borra con eficacia trazos de lápiz sin dejar residuos ni manchas.
                                Durabilidad: Construido con materiales de alta calidad que garantizan una larga vida útil.
                                Tamaño conveniente: Compacto y fácil de manejar para un uso cómodo y portátil.
                                Ideal para múltiples usos: Perfecto para estudiantes, artistas y profesionales que requieren una corrección precisa.
                            </p>
                            <p class="text-muted">Reviews (74)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->


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