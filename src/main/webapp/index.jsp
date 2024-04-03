<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Persona"%>
<%
    if (session.getAttribute("listaper") == null) {
        ArrayList<Persona> lisaux = new ArrayList<Persona>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
        <link rel="stylesheet" href="estilos.css">
    </head>
    <body>
        <div class="container">
            <div class="border">
                <p>PRIMER PARCIAL TEM-742</p>
                <p>Nombre: Ariel Alvaro Condori Larico</p>
                <p>Carnet: 10097382 LP</p>
                <p>RU: 200050824</p>
            </div>
        </div>
        <h1 class="center">Registro de calificaciones</h1>
        <a href="MainServlet?op=nuevo" class="button">Nuevo</a>
        <div class="container2">
        
        <table class="styled-table">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Primer Parcial(30)</th>
                <th>Segundo Parcial(30)</th>
                <th>Examen Final(40)</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Persona item : lista) {
                                                   
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getNombre() %></td>
                <td><%= item.getP1() %></td>
                <td><%= item.getP2() %></td>
                <td><%= item.getEf() %></td>
                <td><%= item.getNota() %></td>
                <td><a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%= item.getId() %>" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        </div>
    </body>
</html>
