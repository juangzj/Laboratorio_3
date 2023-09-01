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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listar Videos</h1>

        <%
            //obtener el arrayList de la solicitud
            ArrayList<Video> misVideos = (ArrayList<Video>) request.getAttribute("misVideos");

            //mostrar los datos de array
            for (Video v : misVideos) {
                out.println("idVideo: " + v.getIdVideo() + "<br>");
                out.println("Titulo: " + v.getTitulo() + "<br>");
                out.println("autor: " + v.getAutor()+ "<br>");
                out.println("Año: " + v.getAnio()+ "<br>");
                out.println("Genero: " + v.getGenero()+ "<br>");
                out.println("URL: " + v.getUrl()+ "<br>");
                out.println("Letra: " + v.getLetra()+ "<br>");
            }
        %>
    </body>
</html>
