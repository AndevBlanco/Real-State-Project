<%@page import="java.util.ArrayList"%>
<%@page import="co.edu.ucatolica.is.ejemplois.DTOs.PersonaDTO"%>
<%@page import="co.edu.ucatolica.is.ejemplois.DTOs.PersonaDTO"%>
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
                <td><%=p.getEmail()%></td>
                <td><%=p.getPass()%></td>
                <td><%=p.getIdn()%></td>
                <td><%=p.getName()%></td>
                <td><%=p.getLname()%></td>
            </tr>
        </table>
        <%      }
            }%>
        
    </body>
</html>