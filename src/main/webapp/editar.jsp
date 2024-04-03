<%@page import="com.emergentes.Persona"%>
<%
    Persona reg = (Persona) request.getAttribute("miobjper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo</title>
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
        <h1 class="center">Registro de Calificaciones</h1>
        <div class="container">
            <div class="border">
                <form action="MainServlet" method="post">
                    <table>
                        <tr>
                            <td>ID:</td>
                            <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                        </tr>
                        <tr>
                            <td>Nombre:</td>
                            <td><input type="text" name="nombre" value="<%= reg.getNombre() %>"></td>
                        </tr>
                        <tr>
                            <td>Primer Parcial:</td>
                            <td><input type="text" name="p1" value="<%= reg.getP1() %>"></td>
                        </tr>
                        <tr>
                            <td>Segundo Parcial:</td>
                            <td><input type="text" name="p2" value="<%= reg.getP1() %>"></td>
                        </tr>
                        <tr>
                            <td>Examen Final:</td>
                            <td><input type="text" name="ef" value="<%= reg.getEf() %>"></td>
                        </tr>
                        <tr>
                            <td>Total</td>
                            <td><input type="text" name="nota" value="<%= reg.getNota() %>"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" name="enviar" class="button" ></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
