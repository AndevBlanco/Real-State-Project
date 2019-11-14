<%-- 
    Document   : mostrar
    Created on : 14/11/2019, 11:25:21 AM
    Author     : sala1
--%>

<%@page import="co.edu.ucatolica.is.ejemplois.DTOs.metroCuadradoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <section class="hero-section set-bg" data-setbg="./resources/img/bg.jpg">
		<div class="container hero-text text-white">


			<%
            ArrayList<metroCuadradoDTO> lista = (ArrayList<metroCuadradoDTO>) request.getAttribute("listap");
            
            if (lista != null)
            {
                
            %>
            <tr><td>Tamaño: <%=lista.size()%></td></tr>
            <%
                for (int i = 0; i < lista.size(); i++)
                {
                    metroCuadradoDTO p = lista.get(i);

        %>4
        <table>
            <tbody>
                <tr>
                <td><%=p.getLugar()%></td>
                <td><%=p.getArea()%></td>
                <td><%=p.getHabitacion()%></td>
                <td><%=p.getBaño()%></td>
                <td><%=p.getGaraje()%></td>
                <td><%=p.getPrecio()%></td>
                <td><%=p.getProceso()%></td>
                <td><%=p.getLugar()%></td>
                <td><%=p.getTipo()%></td> 
            </tr>
            </tbody>
        </table>
        <%      }
            }%>
		</div>
	</section>
    </body>
</html>
