<%-- 
    Document   : index
    Created on : 13-abr-2021, 18:21:38
    Author     : Jorge
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Registro"%>
<%
    if (session.getAttribute("listareg") == null) {
        ArrayList<Registro> listaux = new ArrayList<Registro>();
        session.setAttribute("listareg", listaux);
    }
    ArrayList<Registro> lista = (ArrayList<Registro>) session.getAttribute("listareg");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
        <table border="1">
            <th><p>PRIMER PARCIAL TEM-742<br>
                NOMBRE: JORGE LUIS FLORES SILVA<br>
                CARNET: 9113731
            </p>
            </th>
        </table>
    

    
    <h1>Registros de Vacunas</h1>
    <a href="Principal?op=nuevo">Nuevo</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>NOMBRE</th>
            <th>PESO</th>
            <th>TALLA</th>
            <th>VACUNA</th>
            <th></th>
            <th></th>
        </tr>
        <%
            if (lista != null) {
                for (Registro item : lista) {

        %>
        <tr>
            <td><%= item.getId()%></td>
            <td><%= item.getNombre()%></td>
            <td><%= item.getPeso()%></td>
            <td><%= item.getTalla()%></td>
            <td><%= item.getStado_vacuna()%></td>
            <td><a href="Principal?op=editar&id=<%= item.getId()%>">Modificar</a></td>
            <td><a href="Principal?op=eliminar&id=<%= item.getId()%>"
                   onclick='return confirm("Esta seguro de elimar el registro ??");'>Eliminar</a></td>

        </tr>
        <%
                }
            }
        %>
    </table>
    
</body>
</html>
