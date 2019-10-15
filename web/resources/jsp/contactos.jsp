<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/Contacto.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="contac">
            <h1>Contactenos</h1><br>
            <form>
                    <!-- NOMBRE -->
                    <label for="nombre">Nombres</label>
                    <input type="text" placeholder="">

                    <!-- EMAIL -->
                    <label for="email">Email</label>
                    <input type="text" placeholder="">

                    <!-- Teléfono -->
                    <label for="telefono">Teléfono</label>
                    <input type="text" placeholder="">

                    <!-- Mensaje -->
                    <label for="mensaje">Mensaje</label>
                    <input type="text" placeholder="">
                    <input type="submit" value="Enviar">
                    <a class="volvera" href="../index.jsp" >Volver</a>
                    
            </form>
        </div>    
    </body>
</html>
