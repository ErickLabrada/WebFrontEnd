<%-- 
    Document   : registro
    Created on : Apr 29, 2024, 12:22:59 AM
    Author     : natsu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="CrearUsuario" method="POST">
            <input type="text" placeholder="Nombre">
            <input type="password" placeholder="Contraseña">
            <input type="submit" value="Registarse">
        </form>

    </body>
</html>
