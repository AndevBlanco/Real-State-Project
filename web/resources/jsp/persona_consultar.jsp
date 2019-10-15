<%-- 
    Document   : persona_consultar
    Created on : 20/09/2019, 04:18:56 PM
    Author     : sala8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consulta de personas</h1>
        <form action="../Persona" method="post">
            <!-- NOMBRES -->
            <label for="nombre">Nombres</label>
            <input type="text" name="nombre" placeholder="Ingrese Nombres">

            <!-- APELLIDO -->
            <label for="apellido">Apellidos</label>
            <input type="text" name="apellido" placeholder="Ingrese Apellidos">
            <input type="submit" value="Registrar">
            
            <input type="hidden" name="operacion" placeholder="crear">
            <input type="submit" name="Enviar"/>
        </form>
    </body>
</html>
