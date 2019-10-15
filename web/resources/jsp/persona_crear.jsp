<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Persona</title>
    </head>
    <body>
        <div class="login-box">
            <h1>Registro</h1>
            <form action="../../Persona" method="post">
                <input type="text" name="nombre" placeholder="Usuario" required>
                <input type="password" name="apellido" placeholder="Contraseña " required>
                <input type="text" name="telefono" placeholder="Telefono">
                <input type="email" name="email" placeholder="Correo electronico " required>
                <input type="hidden" name="operacion"value="crear">       
                <input type="submit" name="Enviar"/>
                
            </form>
        </div>
    </body>
</html>
