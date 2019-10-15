<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Persona Consultar</title>
    </head>
    <body>
        <h1>:: Consulta de Personas ::</h1>
        <form action="../Persona" method="post">
                       
            <input type="hidden" name="operacion" value="consultar" >
            
            <input type="submit" name="Enviar"/>
        </form>  
        
        <%
            ArrayList<PersonaDTO> lista = (ArrayList<PersonaDTO>) request.getAttribute("listap");
            
            if (lista != null)
            {
                
            %>
            <tr><td>Tamaño: <%=lista.size()%></td></tr>
            <%
                for (int i = 0; i < lista.size(); i++)
                {
                    PersonaDTO p = lista.get(i);

        %>
        <table>
            <tr>
                <td><%=p.getIdentificacion()%></td>
                <td><%=p.getNombre()%></td>
                <td><%=p.getApellido()%></td>
            </tr>
        </table>
        <%      }
            }%>
        
    </body>
</html>