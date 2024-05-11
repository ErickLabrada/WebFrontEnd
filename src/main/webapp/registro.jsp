<%-- Document : registro Created on : Apr 29, 2024, 12:22:59 AM Author : natsu --%>

    <div%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Registro</title>

            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/templatemo.css">
            <link rel="stylesheet" href="assets/css/custom.css">

            <link rel="stylesheet"
                href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
            <link rel="stylesheet" href="assets/css/fontawesome.min.css">

        </head>

        <body>

            <div class="container-fluid">
                <div class="row vh-100 align-items-center">
                    <!-- aqui empieza el de verdad -->
                    
                    <div class="container text-bg-primary">

                        <div class="row justify-content-center">
        
                            <div class="col-6">
        
                                <div class="form-floating mb-3">
                                    <input type="text" placeholder="Nombre" name="usuario" id="Nombre" class="form-control">
                                    <label for="usuario">Nombre</label>
                                </div>
        
                                <div class="form-floating mb-3" >
                                    <input class="form-control" type="password" placeholder="Contrase�a" name="pass" id="pass">
                                    <label for="pass">Contrase�a</label>
                                </div>
        
                            </div>
        
                        </div>
                       
                        <div class="row justify-content-center">
                            <div class="col-2">
                                <button class="btn btn-primary" onclick="enviarPeticion()">Enviar</button>
                                <button class="btn btn-secondary" onclick="window.location.href = '/WebFrontEnd/'">Cancelar</button>
                            </div>
                        </div>

                    </div>

                    <!-- aqui termina el de verdad -->
                </div>
            </div>

            

            <script src="assets/js/equipo/peticiones.js"></script>

            <script>

                function obtenerDatos() {
                    let nombre = document.getElementById("Nombre").value;
                    let pass = document.getElementById("pass").value;

                    return { "usuario": nombre, "pass": pass };
                }

                async function enviarPeticion() {
                    let peticiones = new Peticion("/WebFrontEnd/CrearUsuario", obtenerDatos());

                    let data = await peticiones.enviarPeticion();

                    alert(data.data);

                }

            </script>

        </body>

        </html>