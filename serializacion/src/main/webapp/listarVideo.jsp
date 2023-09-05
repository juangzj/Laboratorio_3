<%-- 
    Document   : listarVideo
    Created on : 30/08/2023, 5:15:29 p. m.
    Author     : Juan Goyes
--%>

<%@page import="com.umariana.mundo.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página JSP</title>
        <link rel="stylesheet" type="text/css" href="listarVideoInterfaz.css">
    </head>
    <body>
        <div class="contenedor">
            <h1 class="encabezado">Listar Videos</h1>

            <%
                // Obtiene el ArrayList de videos de la solicitud
                ArrayList<Video> misVideos = (ArrayList<Video>) request.getAttribute("misVideos");

                // Recorre los videos y los muestra
                for (Video v : misVideos) {
            %>
            <div class="video">
                <p class="id-video">ID de Video: <%= v.getIdVideo()%></p>
                <p class="titulo-video">Título: <%= v.getTitulo()%></p>
                <p class="autor-video">Autor: <%= v.getAutor()%></p>
                <p class="anio-video">Año: <%= v.getAnio()%></p>
                <p class="genero-video">Género: <%= v.getGenero()%></p>
                <p class="url-video">URL: <%= v.getUrl()%></p>
                <p class="letra-video">Letra: <%= v.getLetra()%></p>
            </div>
            <%
                }
            %>
        </div>
    </body>
</html>